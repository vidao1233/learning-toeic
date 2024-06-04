import { CiCalendar } from "react-icons/ci";
import React, { useContext } from "react";
import { Link } from "react-router-dom";
import Loader from "../Common/Loader/Loader";
import styles from "./VocabularyManager.module.css";
import Heading from "../Common/Header/Heading";
import { useState, useEffect } from "react";
import { toast } from "react-toastify";
import { AiOutlineUser } from "react-icons/ai";
import { MdOutlineFlipToFront } from "react-icons/md";
import classNames from "classnames/bind";
import { UserContext } from "../../Context/UserContext";
import { showDeleteWarning } from "../Common/Alert/Alert";
import { useNavigate } from "react-router-dom";

const cx = classNames.bind(styles);

function VocabularyUserManager() {
  const [topics, setTopic] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const { user } = useContext(UserContext);
  const navigate = useNavigate();

  async function fetchVocabularyTopic() {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/VocList/GetVocListByUser/${user.idUser}`
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`, {});
      } else {
        const data = await response.json();
        setTopic(data);
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  }
  async function DeleteVocabularyTopic(voc_topic_id) {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Vocabulary/DeleteVocabulary/${voc_topic_id}`,
        {
          method: "DELETE",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${user.token}`,
          },
        }
      );
      setIsLoading(false);
      if (!response.ok) {
        toast.error(`Xóa danh sách từ vựng thất bại`, {});
      } else {
        fetchVocabularyTopic();
        toast.success("Xóa danh sách từ vựng thành công");
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  }
  useEffect(() => {
    fetchVocabularyTopic();
    window.scrollTo(0, 0);
  }, []);
  console.log({ topics });

  return (
    <div className="vocabulary-topic-wrapper">
      <div className="container vocabulary-topic">
        <Heading
          subtitle="VictoryU"
          title={`Tất cả danh sách từ vựng của ${user.username}`}
        />
        {isLoading ? <Loader /> : <></>}
        <div className={cx("wrapper")}>
          <div className={cx("gridview")}>
            {topics &&
              topics.map((val, index) => {
                return (
                  <Link
                    key={val.index}
                    className={cx("item")}
                    to={`/vocabulary-by-topic/${val.idVocList}`}
                  >
                    <div className={cx("content")}>
                      <div className={cx("title")}>{val.title}</div>
                      <p className={cx("description")}>{val.description}</p>
                      <p className={cx("author")}>
                        <AiOutlineUser />
                        {val.author}
                      </p>
                      <p className={cx("quantity")}>
                        <p className={cx("label")}>
                          <MdOutlineFlipToFront /> Số lượng từ:
                        </p>
                        {val.quantity} từ{" "}
                      </p>
                      <p className={cx("createdate")}>
                        <p className={cx("label")}>
                          <CiCalendar /> Ngày tạo:
                        </p>
                        {val.createDate}
                      </p>
                    </div>
                    <div className={cx("btn-wrapper")}>
                      <button
                        className={cx("delete-btn")}
                        onClick={() =>
                          showDeleteWarning(() =>
                            DeleteVocabularyTopic(val.idVocList)
                          )
                        }
                      >
                        Xóa
                      </button>
                      <button
                        className={cx("update-btn")}
                        onClick={() => {
                          navigate(`/professor/vocabulary/${val.idVocList}`);
                        }}
                      >
                        Sửa
                      </button>
                    </div>
                  </Link>
                );
              })}
          </div>
        </div>
      </div>
    </div>
  );
}

export default VocabularyUserManager;

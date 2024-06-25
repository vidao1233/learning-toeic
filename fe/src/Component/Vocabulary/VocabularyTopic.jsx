import { CiCalendar } from "react-icons/ci";
import React, { useContext } from "react";
import { Link } from "react-router-dom";
import Loader from "../Common/Loader/Loader";
import styles from "./VocabularyTopic.module.css";
import Heading from "../Common/Header/Heading";
import { useState, useEffect } from "react";
import { toast } from "react-toastify";
import { AiOutlineUser } from "react-icons/ai";
import { MdOutlineFlipToFront } from "react-icons/md";
import classNames from "classnames/bind";
import { UserContext } from "../../Context/UserContext";

const cx = classNames.bind(styles);

function VocabularyTopic() {
  const [topics, setTopic] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const { user } = useContext(UserContext);
  const [urlNavigate, setUrlNavigate] = useState("");

  useEffect(() => {
    async function fetchVocabularyTopic() {
      try {
        const response = await fetch(
          `${
            process.env.REACT_APP_API_BASE_URL ?? "/api"
          }/VocList/GetAllPublicVocList`
        );
        setIsLoading(false);
        if (!response.ok) {
          const errorData = await response?.json();
          toast.error(`${errorData.message}`);
        }
        const data = await response?.json();
        setTopic(data);
      } catch (error) {
        console.log(error);
      }
    }
    fetchVocabularyTopic();
    window.scrollTo(0, 0);
  }, []);
  useEffect(() => {
    if (user.auth) {
      setUrlNavigate(`/vocabulary-by-user/${user.idUser}`);
    } else {
      setUrlNavigate("/login");
    }
  }, [user, setUrlNavigate]);

  return (
    <div className="vocabulary-topic-wrapper">
      <div className="container vocabulary-topic">
        <Heading
          subtitle="VictoryU"
          title="Danh sách từ vựng thường gặp trong bài thi TOEIC"
        />
        <Link to={`${urlNavigate}`}>
          <button
            style={{
              padding: "10px 20px",
              border: "none",
              borderRadius: "5px",
              backgroundColor: "#007BFF",
              color: "#fff",
              fontWeight: "bold",
              fontSize: "16px",
              cursor: "pointer",
              boxShadow: "0 2px 4px rgba(0, 0, 0, 0.2)",
              transition: "background-color 0.3s",
              marginLeft: "81%",
            }}
          >
            Đến trang quản lý từ vựng của bạn
          </button>
        </Link>
        {isLoading ? <Loader /> : <></>}
        <div className={cx("wrapper")}>
          <div className={cx("gridview")}>
            {topics &&
              topics.map((val, index) => {
                return (
                  <Link
                    key={val.idVocList}
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
                          <MdOutlineFlipToFront /> Số lượng từ:{" "}
                        </p>
                        {val.quantity} từ
                      </p>
                      <p className={cx("createdate")}>
                        <p className={cx("label")}>
                          {" "}
                          <CiCalendar /> Ngày tạo:{" "}
                        </p>
                        {val.createDate}
                      </p>
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

export default VocabularyTopic;

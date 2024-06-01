import React, { useContext } from "react";
import { useState, useEffect, useCallback } from "react";
import { useParams } from "react-router-dom";
import {
  AiOutlineArrowLeft,
  AiOutlineArrowRight,
  AiOutlineUser,
} from "react-icons/ai";
import "./VocabularyByTopic.css";
import Heading from "../Common/Header/Heading";
import Loader from "../Common/Loader/Loader";
import { toast } from "react-toastify";
import { useSpeechSynthesis } from "react-speech-kit";
import { useQuery } from "react-query";
import speaker_gif from "../../assets/icons8-speaker.gif";
import AddVocabularyTopic from "./AddVocabularyTopic";
import { UserContext } from "../../Context/UserContext";
import { MdOutlineFlipToFront, MdOutlineDescription } from "react-icons/md";
import { CiCalendar } from "react-icons/ci";
import styles from "./VocabularyTopic.module.css";
import classNames from "classnames/bind";
import { showDeleteWarning } from "../Common/Alert/Alert";

const cx = classNames.bind(styles);

function VocabularyByTopic() {
  const [words, setWords] = useState([]);
  const [listInfo, setListInfo] = useState("");
  const { id } = useParams();
  const [isLoading, setIsLoading] = useState(false);
  const [play_pronun, setPlay_pronun] = useState(false);
  const onEnd = () => {
    setPlay_pronun(false);
  };
  const { speak } = useSpeechSynthesis({ onEnd });
  const [openModal, setOpenModal] = useState(false);
  const { user } = useContext(UserContext);
  const [wordId, setWordId] = useState("");

  const fetchVocabulary = useCallback(async () => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Vocabulary/GetVocabularyByList/${id}`
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`);
      } else {
        const data = await response.json();
        setWords(data);
      }
    } catch (error) {
      console.log(error);
    }
  }, [id]);

  const fetchVocabularyTopic = useCallback(async () => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/VocList/GetVocListById/${id}`
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`);
      } else {
        const data = await response.json();
        setListInfo(data);
      }
    } catch (error) {
      console.log(error);
    }
  }, [id]);

  useEffect(() => {
    fetchVocabulary();
    fetchVocabularyTopic();
    window.scrollTo(0, 0);
  }, [fetchVocabulary, fetchVocabularyTopic]);

  async function DeleteVocabulary(idList, idVoc) {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Vocabulary/DeleteVocabulary/${idList}&&${idVoc}`,
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
        toast.error(`Xóa từ vựng thất bại`, {});
      } else {
        fetchVocabulary();
        toast.success("Xóa từ vựng thành công");
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  }

  const [currentSlide, setCurrentSlide] = useState(0);
  const slideLength = words.length;

  const nextSlide = () => {
    setCurrentSlide(currentSlide === slideLength - 1 ? 0 : currentSlide + 1);
  };

  const prevSlide = () => {
    setCurrentSlide(currentSlide === 0 ? slideLength - 1 : currentSlide - 1);
  };

  useEffect(() => {
    setCurrentSlide(0);
  }, []);
  if (isLoading) {
    return <Loader />;
  }
  return (
    <div className="vocabulary-wrapper">
      <div className="container vocabulary-card">
        <Heading
          subtitle="VictoryU"
          title={`Danh sách từ vựng của ${listInfo.author}`}
        />
        <div className="list__info">
          <p className={cx("description")}>{listInfo.description}</p>
          <p className={cx("author")}>
            <AiOutlineUser />
            Tác giả: {listInfo.author}
          </p>
          <p className={cx("quantity")}>
            <p className={cx("label")}>
              <MdOutlineFlipToFront /> Số lượng từ:{" "}
            </p>
            {listInfo.quantity} từ
          </p>
          <p className={cx("createdate")}>
            <p className={cx("label")}>
              <CiCalendar /> Ngày tạo:
            </p>
            {listInfo.createDate}
          </p>
        </div>
        <div className="slider">
          <AiOutlineArrowLeft className="arrow prev" onClick={prevSlide} />
          <AiOutlineArrowRight className="arrow next" onClick={nextSlide} />
          {words &&
            words.map((word, index) => {
              return (
                <div
                  key={index}
                  className={index === currentSlide ? "slide current" : "slide"}
                >
                  <label>
                    <input type="checkbox" />
                    <div className="flip-card">
                      <div className="front">
                        <div className="eng-word">{word.engWord}</div>
                        <div className="back-item">{`(${word.wordType})`}</div>
                        <div>
                          <hr />
                          <p className="flip">Click để lật</p>
                        </div>
                      </div>
                      <div className="back">
                        <div
                          style={{ fontWeight: "bold", fontStyle: "italic" }}
                        >
                          {word.engWord}
                        </div>
                        <hr />
                        <div>
                          <div
                            style={{
                              display: "flex",
                              alignItems: "center",
                              justifyContent: "center",
                              gap: "5px",
                            }}
                          >
                            <div
                              className="back-item"
                              style={{ fontStyle: "italic" }}
                            >
                              {word.pronunciation ?? "pronunciation"}
                            </div>
                            <img
                              width="24"
                              height="24"
                              src={
                                play_pronun
                                  ? speaker_gif
                                  : "https://img.icons8.com/material-sharp/24/speaker.png"
                              }
                              alt="speaker"
                              onClick={(e) => {
                                e.preventDefault();
                                setPlay_pronun(true);
                                speak({
                                  text: word.engWord ?? "pronunciation",
                                });
                              }}
                            />
                          </div>
                          <div className="back-item">
                            Ý nghĩa: {word.meaning}
                          </div>
                          <div className="back-item">Ví dụ: {word.example}</div>
                        </div>
                        <hr />
                        <p className="flip">Click để lật</p>
                      </div>
                    </div>
                  </label>
                </div>
              );
            })}
        </div>
        <div className="vocabulary-list-wrapper">
          <div className="vocabulary-list">
            {words &&
              words.map((word, key) => {
                return (
                  <div className="vocabulary__item">
                    <div className="vocabulary__item-content">
                      <div>
                        <img
                          src={word.image}
                          alt="vocabulary image"
                          style={{ width: "200px" }}
                        />
                      </div>
                      <div className="vocabulary__item-word">
                        <div
                          style={{
                            fontSize: 25,
                            fontWeight: "bold",
                            color: "#47849e",
                          }}
                        >
                          {word.engWord} ({word.wordType})
                        </div>
                        <div style={{ fontSize: 20 }}>
                          <div>
                            <em>Phiên âm: </em> {word.pronunciation}
                          </div>
                          <div>
                            <em>Ý nghĩa: </em> {word.meaning}
                          </div>
                          <div>
                            <em>Ví dụ: </em> {word.example}
                          </div>
                        </div>
                      </div>
                    </div>
                    {user.auth &&
                      (user.username === listInfo.author ? (
                        <div>
                          <button
                            className="vocabulary__item-button"
                            onClick={() => {
                              setWordId(word.idVoc);
                              setOpenModal(true);
                            }}
                            style={{ color: "blue" }}
                          >
                            Chỉnh sửa
                          </button>
                          <button
                            className="vocabulary__item-button"
                            onClick={() => {
                              showDeleteWarning(() =>
                                DeleteVocabulary(word.idList, word.idVoc)
                              );
                            }}
                            style={{ color: "blue" }}
                          >
                            Xóa
                          </button>
                        </div>
                      ) : (
                        <div>
                          <button
                            className="vocabulary__item-button"
                            onClick={() => {
                              setWordId(word.idVoc);
                              setOpenModal(true);
                            }}
                          >
                            Thêm vào danh sách
                          </button>
                        </div>
                      ))}
                  </div>
                );
              })}
          </div>
        </div>
      </div>
      <AddVocabularyTopic
        modal_on={openModal}
        toggleModal={setOpenModal}
        wordId={wordId}
      />
    </div>
  );
}

export default VocabularyByTopic;

import React, { useContext, useEffect, useState } from "react";
import { UserContext } from "../../../../Context/UserContext";
import CommentItem from "./CommentItem";
import { toast } from "react-toastify";
import Loader from "../../../Common/Loader/Loader";
import { THRESHOLDS } from "../../../../constant/thresholds";

function Comment({ id }) {
  const [isLoading, setIsLoading] = useState(false);
  const [commentsData, setCommentsData] = useState([]);
  const { user } = useContext(UserContext);
  const [input, setInput] = useState("");

  // Hàm tạo chuỗi định dạng ngày tháng từ đối tượng Date
  function formatDateTime() {
    // Tạo một đối tượng Date đại diện cho thời gian hiện tại
    const currentDate = new Date();

    // Lấy thông tin về năm, tháng, ngày, giờ, phút và giây
    const year = currentDate.getFullYear();
    const month = String(currentDate.getMonth() + 1).padStart(2, "0"); // Tháng bắt đầu từ 0, nên cần cộng thêm 1
    const day = String(currentDate.getDate()).padStart(2, "0");
    const hours = String(currentDate.getHours()).padStart(2, "0");
    const minutes = String(currentDate.getMinutes()).padStart(2, "0");
    const seconds = String(currentDate.getSeconds()).padStart(2, "0");

    // Tạo chuỗi định dạng "YYYY-MM-DDTHH:mm:ss"
    const formattedDateTime = `${year}-${month}-${day}T${hours}:${minutes}:${seconds}`;
    return formattedDateTime;
  }
  const checkValidateComment = async (content) => {
    try {
      const response = await fetch(
        "https://us-central1-lucid-vector-424107-f8.cloudfunctions.net/moderateText",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ text: content }),
        }
      );

      const data = await response.json();
      const result = data.result;
      for (const category of result) {
        if (category.confidence >= THRESHOLDS[category.name]) {
          return false;
        }
      }
      return true;
    } catch (error) {
      console.error("Error analyzing sentiment:", error);
    }
  };
  const handleInsertNode = async (inserted_node) => {
    const checked = await checkValidateComment(inserted_node.content);
    if (checked)
      try {
        setIsLoading(true);
        const myDate = formatDateTime();
        const response = await fetch(
          `${process.env.REACT_APP_API_BASE_URL ?? "/api"}/Comment/AddComment`,
          {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              idLesson: inserted_node.idLesson,
              idUser: inserted_node.idUser,
              content: inserted_node.content,
              idCommentReply: inserted_node.idCommentReply,
              createdDate: myDate,
              isDeleted: false,
            }),
          }
        );
        setIsLoading(false);
        if (!response.ok) {
          const errorData = await response.json();
          toast.error(`${errorData.message}`);
        } else {
          handleSetCommentData();
        }
      } catch (error) {
        toast.error(`${error}`);
      }
    else
      toast.error(
        `Bình luận "${inserted_node.content}" của bạn có nội dung không phù hợp.`
      );
  };

  const handleEditNode = async (edited_comment) => {
    const checked = await checkValidateComment(edited_comment.content);
    if (checked)
      try {
        setIsLoading(true);
        const myDate = formatDateTime();
        const response = await fetch(
          `${
            process.env.REACT_APP_API_BASE_URL ?? "/api"
          }/Comment/UpdateComment?idComment=${edited_comment.idComment}`,
          {
            method: "PUT",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify({
              idLesson: edited_comment.idLesson,
              idUser: edited_comment.idUser,
              content: edited_comment.content,
              idCommentReply: edited_comment.idCommentReply,
              createdDate: myDate,
            }),
          }
        );
        setIsLoading(false);
        if (!response.ok) {
          const errorData = await response.json();
          toast.error(`${errorData.message}`);
        } else {
          handleSetCommentData();
        }
      } catch (error) {
        toast.error(`${error}`);
      }
    else
      toast.error(
        `Bình luận "${edited_comment.content}" của bạn có nội dung không phù hợp.`
      );
  };

  const handleDeleteNode = async (edited_id) => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Comment/DeleteComment?idComment=${edited_id}&idUser=${user.idUser}`,
        {
          method: "DELETE",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`);
      } else {
        handleSetCommentData();
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  };

  const fetchComments = async () => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Comment/GetComment?idLesson=${id}`
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`);
      } else {
        const data = await response.json();
        return data;
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  };
  const handleSetCommentData = async () => {
    const data = await fetchComments();
    setCommentsData(data);
  };
  useEffect(() => {
    handleSetCommentData();
  }, []);

  if (isLoading) return <Loader />;

  return (
    <div className=" w-full ">
      <div className="w-full flex gap-3 items-center">
        <div className="h-14 w-14 border-gray-500 rounded-full overflow-hidden m-1">
          <img
            className="h-14 w-14"
            src={
              user.ava ??
              "https://img.icons8.com/ios/100/user-male-circle--v1.png"
            }
            alt=""
          />
        </div>
        <textarea
          type="text"
          className="w-full p-2 flex border border-gray-300 items-center justify-between rounded-md bg-gray-200"
          autoFocus
          value={input}
          onChange={(e) => setInput(e.target.value)}
          placeholder="type..."
        />
        <img
          className="h-12 max-w-12"
          src="https://img.icons8.com/fluency/48/filled-sent.png"
          alt="filled-sent"
          onClick={() => {
            handleInsertNode({
              idLesson: id,
              idUser: user.idUser,
              content: input,
            });
            setInput("");
          }}
        />
      </div>
      {commentsData?.map((comment) => {
        return (
          <div key={comment.firstComment.idComment ?? comment.idComment}>
            <CommentItem
              key={comment.firstComment.idComment ?? comment.idComment}
              handleInsertNode={handleInsertNode}
              handleEditNode={handleEditNode}
              handleDeleteNode={handleDeleteNode}
              comment={comment}
            />
          </div>
        );
      })}
    </div>
  );
}

export default Comment;

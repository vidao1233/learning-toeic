import React from "react";
const comments = [
  {
    idComment: "96478bb4-5e6a-458c-c2cd-08dc76a9060b",
    idLesson: "13439918-544b-4a3e-a803-2b7184d564a4",
    idUser: "d8e8141d-844e-4000-ba4a-b94caeae66ee",
    username: "dutran",
    imageURL:
      "http://res.cloudinary.com/dru8wcmtb/image/upload/v1703600100/jxk8iycdyag5jrmygacq.jpg",
    idCommentReply: "32b84ce8-c091-416f-c2cc-08dc76a9060b",
    content: "fuck you bitch",
    createdDate: "2024-05-18T02:39:47",
    isCheck: false,
  },
  {
    idComment: "5bc4ebc5-02ef-4d3d-c2ce-08dc76a9060b",
    idLesson: "13439918-544b-4a3e-a803-2b7184d564a4",
    idUser: "d8e8141d-844e-4000-ba4a-b94caeae66ee",
    username: "dutran",
    imageURL:
      "http://res.cloudinary.com/dru8wcmtb/image/upload/v1703600100/jxk8iycdyag5jrmygacq.jpg",
    idCommentReply: null,
    content:
      "Sản phẩm tuyệt vời! Ghé thăm trang web của tôi để tìm các ưu đãi tuyệt vời về điện tử: https://shopee.vn/",
    createdDate: "2024-05-18T02:46:55",
    isCheck: false,
  },
  {
    idComment: "fa4a3032-04af-4e52-c2cf-08dc76a9060b",
    idLesson: "13439918-544b-4a3e-a803-2b7184d564a4",
    idUser: "d8e8141d-844e-4000-ba4a-b94caeae66ee",
    username: "dutran",
    imageURL:
      "http://res.cloudinary.com/dru8wcmtb/image/upload/v1703600100/jxk8iycdyag5jrmygacq.jpg",
    idCommentReply: null,
    content:
      "Tuyệt vời! Tôi đã kiếm được 1000 USD mỗi ngày nhờ trang web này: www.kiemtiennhanh.com",
    createdDate: "2024-05-18T03:01:24",
    isCheck: true,
  },
  {
    idComment: "7232eae9-ac74-4692-c2d0-08dc76a9060b",
    idLesson: "13439918-544b-4a3e-a803-2b7184d564a4",
    idUser: "d8e8141d-844e-4000-ba4a-b94caeae66ee",
    username: "dutran",
    imageURL:
      "http://res.cloudinary.com/dru8wcmtb/image/upload/v1703600100/jxk8iycdyag5jrmygacq.jpg",
    idCommentReply: "fa4a3032-04af-4e52-c2cf-08dc76a9060b",
    content: "đụ má mày spam hả",
    createdDate: "2024-05-18T03:02:34",
    isCheck: false,
  },
];
function CommentManage() {
  return (
    <div className="flex flex-col">
      {comments.map((comment, index) => (
        <div key={index} className="flex items-center gap-3">
          <div>{comment.username}</div>
          <div>{comment.content}</div>
        </div>
      ))}
    </div>
  );
}

export default CommentManage;

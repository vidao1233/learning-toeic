import React, { Fragment, useContext, useEffect, useState } from "react";
import { UserContext } from "../../Context/UserContext";
import ChatMessage from "./ChatMessage";
import {
  AZURE_SEARCH_ENDPOINT,
  AZURE_SEARCH_KEY,
  openAIClient,
} from "../../constant/chatbot";
import { toast } from "react-toastify";

function Chatbot({ isTeacher }) {
  const { user } = useContext(UserContext);
  const [state, setState] = useState({
    openBot: false,
    expand: false,
  });
  const assistantAva = isTeacher
    ? "https://img.icons8.com/?size=100&id=pa7hEyvlJkxa&format=png&color=000000"
    : "https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000";
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState("");
  const [conversation, setConversation] = useState([]);

  const submitChatbot = async () => {
    setIsLoading(true);
    openAIClient
      .getChatCompletions("chat-gpt-35", [{ role: "user", content: input }], {
        temperature: 0.7,
        topP: 0.95,
        presencePenalty: 0,
        frequencyPenalty: 0,
        azureExtensionOptions: !isTeacher && {
          extensions: [
            {
              type: "azure_search",
              endpoint: AZURE_SEARCH_ENDPOINT,
              indexName: "chatbotdata",
              authentication: {
                type: "api_key",
                key: AZURE_SEARCH_KEY,
              },
            },
          ],
        },
      })
      .then((response) => {
        setConversation((prevConversation) => [
          ...prevConversation,
          {
            role: "assistant",
            content: response?.choices[0].message.content,
          },
        ]);
      })
      .catch((errors) => {
        console.log(errors);
        setError(
          errors.code === 429
            ? `Bạn đang gửi yêu cầu quá nhanh. Thử lại sau ${
                errors.message?.match(/retry after (\d+) seconds/)[1]
              } giây.`
            : "Lỗi hệ thống"
        );
      })
      .finally(() => setIsLoading(false));
  };
  const checkAvalable = async () => {
    if (!isTeacher) return true;
    if (user.role[1] === "VipStudent") return true;
    else {
      try {
        const response = await fetch(
          `${
            process.env.REACT_APP_API_BASE_URL ?? "/api"
          }/ChatBot/GetAvailable/${user.idUser}`,
          {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${user.token}`,
            },
          }
        );
        if (!response.ok) {
          console.log(response);
        } else {
          const data = await response?.json();
          if (data.availableChat > 0) return true;
        }
        return false;
      } catch (error) {
        toast.error(`${error}`);
      }
    }
  };
  const UpdateAvalable = async () => {
    try {
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/ChatBot/UpdateAvalableChat/${user.idUser}`,
        {
          method: "PUT",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${user.token}`,
          },
        }
      );
      if (!response.ok) {
        toast.error(`Get User Profile failed`, {});
      } else {
        const data = await response?.json();
        if (data.availableChat > 0) return true;
      }
      return false;
    } catch (error) {
      toast.error(`${error}`);
    }
  };
  const submitQuestion = async () => {
    setConversation((prevConversation) => [
      ...prevConversation,
      {
        role: "user",
        content: input,
      },
    ]);
    setInput("");
    setError("");
    const check = await checkAvalable();
    if (check) {
      submitChatbot();
      if (user.role[1] !== "VipStudent" && isTeacher) UpdateAvalable();
    } else {
      setConversation((prevConversation) => [
        ...prevConversation,
        {
          role: "assistant",
          content: `Đã hết lượt free trong tháng. Vui lòng truy cập trang <a class="!underline !text-blue" href="/vippackage">Get VIP</a> để nâng cấp tài khoản`,
        },
      ]);
    }
  };

  useEffect(() => {
    if (isTeacher && conversation.length)
      localStorage.setItem("chatbot", JSON.stringify(conversation));
  }, [isTeacher, conversation]);

  useEffect(() => {
    const userConversation = localStorage.getItem("chatbot");
    if (userConversation && isTeacher)
      setConversation(JSON.parse(userConversation));
    else
      setConversation([
        {
          role: "assistant",
          content: "Xin chào, đây là VictoryU. Bạn cần giúp đỡ gì ạ.",
        },
      ]);
  }, []);

  useEffect(() => {
    console.log(error);
  }, [error]);
  useEffect(() => {
    console.log(conversation);
  }, [conversation]);

  return (
    <Fragment>
      <div
        className={`fixed ${isTeacher ? "bottom-24" : "bottom-4"} right-4 z-10`}
        onClick={() =>
          setState((prevState) => ({
            ...prevState,
            openBot: !prevState.openBot,
          }))
        }
      >
        <img src={assistantAva} alt="" className="w-16 h-16" />
      </div>
      {state.openBot && (
        <div
          className={`${
            state.expand ? "h-[80vh] w-[60vw]" : "h-[65vh] w-[350px]"
          } border border-gray-300 rounded-xl fixed bottom-0 right-4 z-20 bg-slate-100 shadow-lg flex flex-col`}
        >
          <div className="px-4 py-2 flex justify-between items-center bg-primary-300  rounded-t-xl">
            <div className="inline-flex items-center gap-2">
              <img src={assistantAva} alt="avatar" className="w-8 h-8" />
              <div className="font-semibold text-lg tracking-tight">
                {isTeacher ? "Giáo viên ảo VictoryU" : "Trợ lý ảo VictoryU"}
              </div>
            </div>
            <div className="flex gap-3 items-center">
              {state.expand ? (
                <i
                  className="fa-solid fa-minimize fa-xl cursor-pointer"
                  onClick={() =>
                    setState((prevState) => ({
                      ...prevState,
                      expand: !prevState.expand,
                    }))
                  }
                ></i>
              ) : (
                <i
                  className="fa-solid fa-maximize fa-xl cursor-pointer"
                  onClick={() =>
                    setState((prevState) => ({
                      ...prevState,
                      expand: !prevState.expand,
                    }))
                  }
                ></i>
              )}
              <i
                className="fa-solid fa-minus fa-xl cursor-pointer"
                onClick={() =>
                  setState((prevState) => ({
                    ...prevState,
                    openBot: false,
                  }))
                }
              ></i>
            </div>
          </div>
          <div className="px-4 py-2 w-full flex-1 flex flex-col gap-2 overflow-auto">
            {conversation?.map((message, index) => (
              <ChatMessage
                content={message.content}
                role={message.role}
                img={message.role === "assistant" ? assistantAva : user.ava}
              />
            ))}
            {isLoading && (
              <ChatMessage
                content={"..."}
                role="assistant"
                img={assistantAva}
              />
            )}
            {error && (
              <ChatMessage
                content={error}
                role="assistant"
                img={assistantAva}
                customClass={"!bg-rose-400"}
              />
            )}
          </div>
          <hr />
          <div className="w-full px-4 py-2 flex justify-between bg-white">
            <input
              className="w-full text-sm leading-5 outline-none"
              onChange={(e) => setInput(e.currentTarget.value)}
              value={input}
              onKeyUp={(e) => {
                if (e.key === "Enter") submitQuestion();
              }}
              autoFocus
            />
            <img
              className="h-8 max-w-8"
              src="https://img.icons8.com/fluency/48/filled-sent.png"
              alt="filled-sent"
              onClick={() => {
                submitQuestion();
              }}
            />
          </div>
        </div>
      )}
    </Fragment>
  );
}

export default Chatbot;

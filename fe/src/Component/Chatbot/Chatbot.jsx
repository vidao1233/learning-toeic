import React, { Fragment, useContext, useState } from "react";
import { UserContext } from "../../Context/UserContext";
import ChatMessage from "./ChatMessage";
import {
  AZURE_SEARCH_ENDPOINT,
  AZURE_SEARCH_KEY,
  openAIClient,
} from "../../constant/chatbot";
function Chatbot() {
  const { user } = useContext(UserContext);
  const [state, setState] = useState({
    openBot: false,
    expand: false,
  });
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState("");
  const [conversation, setConversation] = useState([
    {
      role: "assistant",
      content: "Xin chào, đây là VictoryU. Bạn cần giúp đỡ gì ạ.",
    },
  ]);

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
    setIsLoading(true);
    openAIClient
      .getChatCompletions("chat-gpt-35", [{ role: "user", content: input }], {
        maxTokens: 500,
        temperature: 0.7,
        topP: 0.95,
        presencePenalty: 0,
        frequencyPenalty: 0,
        // azureExtensionOptions: {
        //   extensions: [
        //     {
        //       type: "azure_search",
        //       endpoint: AZURE_SEARCH_ENDPOINT,
        //       indexName: "toeicweb",
        //       authentication: {
        //         type: "api_key",
        //         key: AZURE_SEARCH_KEY,
        //       },
        //     },
        //   ],
        // },
      })
      .then((response) => {
        setConversation((prevConversation) => [
          ...prevConversation,
          { role: "assistant", content: response?.choices[0].message.content },
        ]);
      })
      .catch((error) => {
        console.log(error);
        setError(
          error.code === "429"
            ? "Bạn đang gửi yêu cầu quá nhanh. Vui lòng đợi một chút và thử lại sau."
            : "Lỗi hệ thống"
        );
      })
      .finally(() => setIsLoading(false));
  };
  return (
    <Fragment>
      <div
        className="fixed bottom-8 right-8 z-10"
        onClick={() =>
          setState((prevState) => ({
            ...prevState,
            openBot: !prevState.openBot,
          }))
        }
      >
        <img
          src="https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000"
          alt=""
          className="w-20 h-20"
        />
      </div>
      {state.openBot && (
        <div
          className={`${
            state.expand ? "h-[80vh] w-[60vw]" : "h-[65vh] w-[350px]"
          } border border-gray-300 rounded-xl fixed bottom-0 right-4 z-20 bg-slate-100 shadow-lg flex flex-col`}
        >
          <div className="px-4 py-2 flex justify-between items-center bg-primary-300  rounded-t-xl">
            <div className="inline-flex items-center gap-2">
              <img
                src="https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000"
                alt="avatar"
                className="w-8 h-8"
              />
              <div className="font-semibold text-lg tracking-tight">
                Trợ lý ảo VictoryU
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
                img={
                  message.role === "assistant"
                    ? "https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000"
                    : user.ava
                }
              />
            ))}
            {isLoading && (
              <ChatMessage
                content={"..."}
                role="assistant"
                img="https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000"
              />
            )}
            {error && (
              <ChatMessage
                content={
                  <div className="flex gap-2 items-start">
                    <i className="pt-1 fa-solid fa-circle-info text-rose-900"></i>
                    <div>{error}</div>
                  </div>
                }
                role="assistant"
                img="https://img.icons8.com/?size=100&id=D7zLidTn6pHw&format=png&color=000000"
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

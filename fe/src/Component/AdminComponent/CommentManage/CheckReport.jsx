import React, { useState } from "react";
import { toast } from "react-toastify";
import Loader from "../../Common/Loader/Loader";
import "../../ProfessorComponent/TestManage/AddTest.css";

function CheckReport({ toggleModal, modal_on, report }) {
  const [isLoading, setIsLoading] = useState(false);
  const [checkReport, setCheckReport] = useState({
    isChecked: false,
    checkNote: "",
  });

  const handleEditNode = async () => {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${
          process.env.REACT_APP_API_BASE_URL ?? "/api"
        }/Report/UpdateReport?idReport=${report.idReport}`,
        {
          method: "PUT",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            idComment: report.idComment,
            idUser: report.idUser,
            reason: report.reason,
            reportDate: report.reportDate,
            checkNote: checkReport.checkNote,
            isCheck: checkReport.isChecked,
          }),
        }
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData.message}`);
      } else {
        toast.success("Đã xác nhận");
        toggleModal();
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  };
  if (isLoading) {
    return <Loader />;
  }
  return (
    <div className="professor-add-test">
      {modal_on && (
        <div className="add-test-modal">
          <div onClick={toggleModal} className="overlay"></div>
          <div className="add-test-panel">
            <div className="add-test-content">
              <div onClick={toggleModal} className="add-test-close-btn">
                <svg
                  onClick={toggleModal}
                  xmlns="http://www.w3.org/2000/svg"
                  x="0px"
                  y="0px"
                  width="34"
                  height="34"
                  viewBox="0 0 512 512"
                >
                  <path
                    fill="#E04F5F"
                    d="M504.1,256C504.1,119,393,7.9,256,7.9C119,7.9,7.9,119,7.9,256C7.9,393,119,504.1,256,504.1C393,504.1,504.1,393,504.1,256z"
                  ></path>
                  <path
                    fill="#FFF"
                    d="M285,256l72.5-84.2c7.9-9.2,6.9-23-2.3-31c-9.2-7.9-23-6.9-30.9,2.3L256,222.4l-68.2-79.2c-7.9-9.2-21.8-10.2-31-2.3c-9.2,7.9-10.2,21.8-2.3,31L227,256l-72.5,84.2c-7.9,9.2-6.9,23,2.3,31c4.1,3.6,9.2,5.3,14.3,5.3c6.2,0,12.3-2.6,16.6-7.6l68.2-79.2l68.2,79.2c4.3,5,10.5,7.6,16.6,7.6c5.1,0,10.2-1.7,14.3-5.3c9.2-7.9,10.2-21.8,2.3-31L285,256z"
                  ></path>
                </svg>
              </div>
              <form
                onSubmit={(e) => {
                  e.preventDefault();
                  handleEditNode();
                }}
              >
                <div className="add-test-title">
                  <h2>Xác nhận báo cáo</h2>
                </div>
                <div className="input-field">
                  <textarea
                    className="input-item"
                    type="text"
                    placeholder="Ghi chú"
                    onChange={(e) => {
                      setCheckReport({
                        ...checkReport,
                        checkNote: e.currentTarget.value,
                      });
                    }}
                  />
                </div>
                <div
                  style={{
                    display: "flex",
                    alignItems: "center",
                    gap: 8,
                    width: "fit-full",
                  }}
                >
                  <div
                    style={{ display: "flex", width: "fit-content", gap: 4 }}
                  >
                    <input
                      style={{}}
                      type="checkbox"
                      onChange={(e) => {
                        setCheckReport({
                          ...checkReport,
                          isChecked: e.currentTarget.checked,
                        });
                      }}
                    />
                    <div style={{ padding: 4 }}>Có vi phạm</div>
                  </div>
                </div>
                <input
                  type="submit"
                  className="vocabulary-submit"
                  value="Thêm"
                ></input>
              </form>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

export default CheckReport;

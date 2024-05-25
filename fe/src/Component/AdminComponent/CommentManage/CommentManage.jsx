import React, { Fragment, useEffect, useState } from "react";
import { toast } from "react-toastify";
import Loader from "../../Common/Loader/Loader";
import CheckReport from "./CheckReport";

function CommentManage() {
  const [reports, setReports] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [modal, setModal] = useState(false);

  const toggleModal = () => {
    setModal(!modal);
  };

  if (modal) {
    document.body.classList.add("active-modal");
  } else {
    document.body.classList.remove("active-modal");
  }

  async function fetchReports() {
    try {
      setIsLoading(true);
      const response = await fetch(
        `${process.env.REACT_APP_API_BASE_URL ?? "/api"}/Report/GetAllReports`,
        {
          headers: {
            "Content-Type": "application/json",
          },
        }
      );
      setIsLoading(false);
      if (!response.ok) {
        const errorData = await response.json();
        toast.error(`${errorData}`);
      } else {
        const data = await response.json();
        setReports(data);
        console.log(data);
      }
    } catch (error) {
      toast.error(`${error}`);
    }
  }
  useEffect(() => {
    fetchReports();
  }, []);

  if (isLoading) return <Loader />;
  return (
    <Fragment>
      <div>
        <h2 class="text-2xl font-semibold leading-tight">
          Danh sách báo cáo bình luận
        </h2>
      </div>
      <div class="-mx-4 px-4 py-4 overflow-x-auto">
        <div class="inline-block min-w-full shadow-md rounded-lg overflow-hidden">
          <table class="min-w-full leading-normal">
            <thead className="min-w-full">
              <tr className="w-full grid grid-cols-12">
                <th class="col-span-2 p-4 border-b-2 border-gray-200 bg-gray-100 inline-flex items-center text-lg font-semibold text-gray-800 tracking-tight">
                  Người báo cáo
                </th>
                <th class="col-span-3 p-4 border-b-2 border-gray-200 bg-gray-100 inline-flex items-center text-lg font-semibold text-gray-800 tracking-tight">
                  Nội dung bình luận
                </th>
                <th class="col-span-3 p-4 border-b-2 border-gray-200 bg-gray-100 inline-flex items-center text-lg font-semibold text-gray-800 tracking-tight">
                  Lý do báo cáo
                </th>
                <th class="col-span-2 p-4 border-b-2 border-gray-200 bg-gray-100 inline-flex items-center text-lg font-semibold text-gray-800 tracking-tight">
                  Ngày báo cáo
                </th>
                <th class="col-span-2 p-4 border-b-2 border-gray-200 bg-gray-100 inline-flex items-center text-lg font-semibold text-gray-800 tracking-tight">
                  Trạng thái
                </th>
              </tr>
            </thead>
            <tbody>
              {reports &&
                reports.map((report, index) => (
                  <Fragment>
                    <CheckReport
                      modal_on={modal}
                      toggleModal={toggleModal}
                      report={report}
                    />
                    <tr className="w-full grid grid-cols-12">
                      <td class="col-span-2 px-5 py-5 border-b border-gray-200 bg-white text-sm">
                        <p class="text-gray-900 whitespace-no-wrap">
                          {report.idUser}
                        </p>
                      </td>
                      <td class="col-span-3 px-5 py-5 border-b border-gray-200 bg-white text-sm">
                        <p class="text-gray-900 whitespace-no-wrap">
                          {report.idComment}
                        </p>
                      </td>
                      <td class="col-span-3 px-5 py-5 border-b border-gray-200 bg-white text-sm">
                        <p class="text-gray-900 whitespace-no-wrap">
                          {report.reason}
                        </p>
                      </td>
                      <td class="col-span-2 px-5 py-5 border-b border-gray-200 bg-white text-sm">
                        <p class="text-gray-900 whitespace-no-wrap">
                          {report.reportDate}
                        </p>
                      </td>
                      <td class="col-span-2 px-5 py-5 border-b border-gray-200 bg-white text-sm flex gap-3 justify-between">
                        <p
                          class={`${
                            report.isCheck ? "text-green" : "text-orange-600"
                          } whitespace-no-wrap`}
                        >
                          {!report.isCheck ? "Chưa kiểm tra" : "Đã kiểm tra"}
                        </p>
                        <div className="relative">
                          <button
                            type="button"
                            class="inline-block text-gray-500 hover:text-gray-700"
                          >
                            <svg
                              class="inline-block h-6 w-6 fill-current"
                              viewBox="0 0 24 24"
                            >
                              <path d="M12 6a2 2 0 110-4 2 2 0 010 4zm0 8a2 2 0 110-4 2 2 0 010 4zm-2 6a2 2 0 104 0 2 2 0 00-4 0z" />
                            </svg>
                          </button>
                          <input
                            type="checkbox"
                            className="w-full h-full absolute top-0 right-0 z-1 opacity-0 peer cursor-pointer"
                          />
                          <div
                            className="hidden peer-checked:block absolute top-2 right-5 w-28 px-4 py-3 bg-primary-50 text-center text-base font-semibold hover:shadow-lg border-[1px] cursor-pointer"
                            onClick={toggleModal}
                          >
                            Xác nhận
                          </div>
                        </div>
                      </td>
                    </tr>
                  </Fragment>
                ))}
            </tbody>
          </table>
        </div>
      </div>
    </Fragment>
  );
}

export default CommentManage;

export const bingRequest = async (query) => {
  const myHeaders = new Headers();
  myHeaders.append(
    "Ocp-Apim-Subscription-Key",
    "9402686be1a7428b88153628a3801a2e"
  );
  const endpoint = `https://api.bing.microsoft.com/v7.0/images/search?q=${encodeURIComponent(
    query
  )}`;
  const res = await fetch(endpoint, {
    method: "GET",
    headers: myHeaders,
  });
  const data = await res.json();
  console.log("Image results from BING: ", data.value);
  return data.value[0].contentUrl ?? null;
};

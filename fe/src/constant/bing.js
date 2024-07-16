const getContentUrlWithSizeLimit = (data, sizeLimitInMB) => {
  const sizeLimitInBytes = sizeLimitInMB * 1024 * 1024; // Chuyển đổi MB sang bytes

  const result = data.value.find((item) => {
    const contentSizeInBytes = parseInt(
      item.contentSize.replace(/\s*B/, ""),
      10
    );
    return contentSizeInBytes < sizeLimitInBytes;
  });

  return result?.contentUrl ?? null;
};

export const bingRequest = async (query) => {
  const myHeaders = new Headers();
  myHeaders.append(
    "Ocp-Apim-Subscription-Key",
    "d7a76291bea9415db0b73b614ae3699e"
  );
  const endpoint = `https://api.bing.microsoft.com/v7.0/images/search?q=${encodeURIComponent(
    query
  )}`;
  const res = await fetch(endpoint, {
    method: "GET",
    headers: myHeaders,
  });
  const data = await res.json();
  const contentUrl = getContentUrlWithSizeLimit(data, 4.5);
  return contentUrl ?? null;
};

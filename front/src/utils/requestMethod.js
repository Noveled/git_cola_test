/* ====== Common GET Request Function ====== */
export async function getRequest(url, idx) {
  const full_url = url + "?userId=" + idx;
  console.log("full", full_url);
  return await fetch(full_url).then((response) => {
    if (!response.ok) {
      throw new Error("Network response was not ok");
    }
    return response.json();
  });
}

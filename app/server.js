const express = require("express");
const app = express();

// viewエンジン設定
app.set("view engine", "ejs");

app.get("/", (req, res) => {
  const message = "test message";
  res.render("index", { message: message });
});

app.listen(9000, () => {
  console.log("The app listening on port 5000");
});

const express = require("express");
const app = express();
const path = require("path");
const PORT = "3000";
const bodyParser = require("body-parser");
const mysql = require("mysql");

let db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "stax",
});

db.connect((err) => {
  if (err) throw err;
  console.log("database connected successfully");
});

let read = "SELECT * FROM artist";

db.query(read, (err, result) => {
  if (err) throw err;
  // console.table(result);
});

app.use(express.static("public"));
app.use(express.static(path.join(__dirname, "media")));
app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  let title = "home";
  res.render("home");
});

app.get("/band", (req, res) => {
  let artist = `SELECT * FROM artist`;
  db.query(artist, (err, artistList) => {
    if (err) throw err;

    res.render("band", { artistList });
  });
});


app.get("/members", (req, res) => {
  res.render("members");
});

app.post("/members", (req, res) => {
  let user = req.body.username;
  let password = req.body.password;

  let checkuser = "SELECT * FROM member WHERE user_name = ? AND password = ? ";
  db.query(checkuser, [user, password], (err, rows) => {
    if (err) throw err;
    let numRows = rows.length;
    if (numRows > 0) {
      res.redirect("/");
    } else {
      res.send("<code>accessed denied</code>");
    }
  });
});


/*
app.get("/members2", (req, res) => {
  res.render("members2");
});

app.post("/members2", (req, res) => {
  let user = req.body.username;
  let password = req.body.password;

  let checkuser = "SELECT * FROM member WHERE user_name = ? AND password = ? ";
  db.query(checkuser, [user, password], (err, rows) => {
    if (err) throw err;
    let numRows = rows.length;
    if (numRows > 0) {
      res.send("<code>logged in</code>");
    } else {
      res.send("<code>accessed denied</code>");
    }
  });
});


*/
app.get("/contact", (req, res) => {
  res.render("contact");
});

app.post("/contact", (req, res) => {
  //console.log(req.body);
  const { email, message } = req.body;
  console.log(email);
  console.log(message);
  let userdata = req.body;

  res.render("contact", { sentdata: userdata });
});

app.get("/albums", (req, res) => {
  let album = `SELECT * FROM album`;

  db.query(album, (err, albumInfo) => {
    if (err) throw err;
    res.render("albums", { albumInfo });
  });
});

app.get("/reviews", (req, res) => {
  let album = `SELECT * FROM user_review`;

  db.query(album, (err, albumInfo) => {
    if (err) throw err;
    res.render("reviews", { albumInfo });
  });
});

app.post("/reviews", (req, res) => {
  let album = req.body.album_name;
  let album_review = req.body.album_review;
  let review = "INSERT INTO dummy_table (album, review) VALUES( ? , ? )";
  db.query(review, [album, album_review], (err, rows) => {
    if (err) throw err;
    res.send(
      `You have now added a review for <p>${album}</p> stating that : <p>${album_review} </p>`
    );

    console.log(album);
    console.log(album_review);
  });
});

app.listen(PORT, () => {
  console.log(`Listening on http://localhost:${PORT}`);
});

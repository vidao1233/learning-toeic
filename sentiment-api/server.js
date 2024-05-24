const express = require("express");
const cors = require("cors");
const language = require("@google-cloud/language");

const app = express();
app.use(express.json());
app.use(cors()); // Sử dụng CORS middleware ở đây

const client = new language.LanguageServiceClient();

app.post("/analyze-sentiment", async (req, res) => {
  const { text } = req.body;

  if (!text) {
    return res.status(400).send("Text is required");
  }

  const document = {
    content: text,
    type: "PLAIN_TEXT",
  };

  try {
    const [result] = await client.analyzeSentiment({ document });
    const sentiment = result.documentSentiment;
    res.json({
      score: sentiment.score,
      magnitude: sentiment.magnitude,
    });
  } catch (error) {
    res.status(500).send("Error analyzing sentiment");
  }
});

app.post("/moderateText", async (req, res) => {
  const { text } = req.body;

  if (!text) {
    return res.status(400).send("Text is required");
  }

  const document = {
    content: text,
    type: "PLAIN_TEXT",
  };

  try {
    const result = await client.moderateText({ document });
    const categories = result[0].moderationCategories;
    res.json({
      result: categories,
    });
  } catch (error) {
    res.status(500).send("Error analyzing sentiment");
  }
});
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

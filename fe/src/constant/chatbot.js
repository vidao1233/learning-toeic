import { OpenAIClient, AzureKeyCredential } from "@azure/openai";
export const OPENAI_API_KEY = "6cc575947b0544229598df5c5c4e27d4";
export const OPENAI_ENDPOINT = "https://toeicchatbot.openai.azure.com/";
export const openAIClient = new OpenAIClient(
  OPENAI_ENDPOINT,
  new AzureKeyCredential(OPENAI_API_KEY)
);

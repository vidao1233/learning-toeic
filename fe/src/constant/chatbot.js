import { OpenAIClient, AzureKeyCredential } from "@azure/openai";
export const OPENAI_API_KEY = "1a9a2e6c63aa4325a0f08a6d859e0daa";
export const OPENAI_ENDPOINT = "https://230902.openai.azure.com";
export const AZURE_SEARCH_ENDPOINT =
  "https://toeicwebstorage.search.windows.net";
export const AZURE_SEARCH_KEY =
  "Ub3x7ZGTXcOtOaFOmmG9EyVBoHpVQY4wRBT9TkEtmmAzSeBwkqBc";
export const openAIClient = new OpenAIClient(
  OPENAI_ENDPOINT,
  new AzureKeyCredential(OPENAI_API_KEY)
);

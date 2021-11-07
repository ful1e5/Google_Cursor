import { Colors } from "./core/types";

interface Config {
  themeName: string;
  color: Colors;
}

const black = "#000000";
const blue = "#4285F4";
const white = "#FFFFFF";
const red = "#FF0000";

const config: Config[] = [
  {
    themeName: "GoogleDot-Blue",
    color: {
      base: blue,
      outline: white,
    },
  },
  {
    themeName: "GoogleDot-Black",
    color: {
      base: black,
      outline: white,
    },
  },
  {
    themeName: "GoogleDot-White",
    color: {
      base: white,
      outline: black,
    },
  },
  {
    themeName: "GoogleDot-Red",
    color: {
      base: red,
      outline: white,
    },
  },
];

export { config };

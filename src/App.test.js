import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders the greeting", () => {
  render(<App />);
  const linkElement = screen.getByText(/Hello Jordan!/i);
  expect(linkElement).toBeInTheDocument();
});

# llm-project
An application that exposes an API with the following endpoints:

<b>POST /run?task=<task_description></b>: Executes a plain‑English task. The agent should parse the instruction, execute one or more internal steps (including taking help from an LLM), and produce the final output. If successful, return a HTTP 200 OK response. If unsuccessful because of an error in the task, return a HTTP 400 Bad Request response. If unsuccessful because of an error in the agent, return a HTTP 500 Internal Server Error response. The body may optionally contain any useful information in each of these cases

<b>GET /read?path=<file_path></b>: Returns the content of the specified file. This is critical for verification of the exact output. If successful, return a HTTP 200 OK response with the file content as plain text. If the file does not exist, return a HTTP 404 Not Found response and an empty body

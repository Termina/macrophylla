## Macrophylla

> try smarter CLI tools, still experimenting...

Macrophylla 是一个命令行助手，它使用 Gemini API 与用户交互，并能够执行 Bash 命令和 Node.js 代码。

### 使用方式

1.  **准备 Gemini API Key:** 确保你已经设置了 `GEMINI_API_KEY` 环境变量。

2.  **运行工具:** 直接运行该工具。

3.  **与助手交互:** 工具会提示你输入任务描述。 你可以使用自然语言描述你的需求。

4.  **执行 Bash 命令和 Node.js 代码:** 工具会根据你的描述，自动判断是否需要执行 Bash 命令或 Node.js 代码来完成任务。 如果需要执行，会先向你确认，然后执行并将结果返回。

5.  **示例:**

    - 用户: 读取当前目录下的 `README.md` 文件内容。
    - 助手: (判断需要执行 Bash 命令) Bash command to execute: `cat README.md` Execute this Bash command? (y/n):
    - 用户: y
    - 助手: (执行命令，并将结果返回)

### Debug

Open node inspecter from Chrome to debug:

```bash
node --inspect --experimental-network-inspection bin.mjs
```

### License

MIT

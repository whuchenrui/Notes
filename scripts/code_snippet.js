/*
 This code snippet will insert template content to the specific div. It is handly when template is needed.

 How to use
 1. create a bookmark and copy below code to the URL section
 2. change div id name accordingly
 */
javascript:(function(){parent = document.getElementById("quick-create-container"); text = parent.getElementsByTagName("textarea")[0]; text.value="**What is the problem/requirement?**\n\n**What do you plan to do?**\n\n**What is the exit criteria for this task?**\n\n"; markdown = parent.querySelectorAll("[data-name=%27description-content-type-markdown%27]")[0]; markdown.click(); })();


javascript:(function(){document.getElementById("codex-description").value="**SIM(s)**  \n\n\n**What was the problem/requirement?**  \n\n\n**What was the solution?**  \n\n\n**What is the impact of this change?**  \n\n\n**How were these changes tested?**  \n\n\n";})();
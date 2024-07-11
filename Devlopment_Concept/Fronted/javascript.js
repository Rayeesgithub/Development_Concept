
Copy->  // This function copies the password to the clipboard when the "Copy" button is clicked.
async function copyContent() {
    try {
        // Use the Clipboard API to copy .
        await navigator.clipboard.writeText(passwordDisplay.value);
        copyMsg.innerText = "Copied";
    } catch (e) {
        copyMsg.innerText = "Failed";
    }
 // Make the "Copied" message visible.
    copyMsg.classList.add("active");

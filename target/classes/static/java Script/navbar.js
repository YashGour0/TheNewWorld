// Wait for DOM to load
document.addEventListener("DOMContentLoaded", () => {
    const dropdowns = document.querySelectorAll(".dropdown");

    dropdowns.forEach(dropdown => {
        const button = dropdown.querySelector(".dropbtn");
        const content = dropdown.querySelector(".dropdown-content");

        // Toggle dropdown visibility on click
        button.addEventListener("click", () => {
            const isVisible = content.style.display === "block";
            content.style.display = isVisible ? "none" : "block";
        });

        // Close dropdown when clicked outside
        document.addEventListener("click", (event) => {
            if (!dropdown.contains(event.target)) {
                content.style.display = "none";
            }
        });
    });
});


    // JavaScript for Carousel automatic sliding
    let currentIndex = 0;
    const images = document.querySelectorAll('.banner-image');
    const totalImages = images.length;

    function carousel() {
        images.forEach((img, index) => {
            img.style.opacity = (index === currentIndex) ? 1 : 0;
        });
        currentIndex = (currentIndex + 1) % totalImages;
    }

    setInterval(carousel, 4000); // Change image every 4 seconds

	document.addEventListener("DOMContentLoaded", function() {
	    const noticeBoard = document.querySelector('.notice-board');
	    const notices = noticeBoard.querySelector('ul');
	    
	    // Scroll the notices vertically, creating a sliding effect
	    setInterval(function() {
	        const firstNotice = notices.querySelector('li');
	        notices.appendChild(firstNotice);
	    }, 3000); // Change notice every 3 seconds
	});


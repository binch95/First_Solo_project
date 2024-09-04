let currentIndex = 0;
const slidesToShow = 3; // 한 번에 보이는 슬라이드 개수
const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length;
const maxIndex = totalSlides - slidesToShow;

function showSlide(index) {
    const slidesContainer = document.querySelector('table');
    slidesContainer.style.transform = 'translateX(' + (-index * (100 / slidesToShow)) + '%)';
}

function nextSlide() {
    currentIndex = (currentIndex + 1) > maxIndex ? 0 : currentIndex + 1;
    showSlide(currentIndex);
}

function prevSlide() {
    currentIndex = (currentIndex - 1) < 0 ? maxIndex : currentIndex - 1;
    showSlide(currentIndex);
}

// 자동 슬라이드 (5초마다)
setInterval(nextSlide, 5000);

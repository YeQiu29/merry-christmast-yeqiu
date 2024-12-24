// Set target date for Christmas 2024 (local time)
var countDownDate = new Date(2024, 11, 25, 0, 0, 0).getTime(); // Ubah bulan ke 11 untuk Desember

// Uncomment this if you want to use UTC time:
// var countDownDate = new Date(Date.UTC(2024, 11, 25, 0, 0, 0)).getTime();

// Debugging: Log the target countdown date
console.log("Countdown Target Date: ", new Date(countDownDate).toString());

var x = setInterval(function () {
    // Get the current time
    var now = new Date().getTime();

    // Debugging: Log the current time
    console.log("Current Time: ", new Date(now).toString());

    // Calculate the time difference
    var distance = countDownDate - now;

    // Debugging: Log the remaining distance in milliseconds
    console.log("Time Difference (ms): ", distance);

    // Time calculations for days, hours, minutes, and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Debugging: Log the calculated time components
    console.log("Days: ", days, "Hours: ", hours, "Minutes: ", minutes, "Seconds: ", seconds);

    // Display the countdown
    if (distance >= 0) {
        document.getElementById("counter").innerHTML =
            days + " days " + hours + " hours " + minutes + " minutes " + seconds + " seconds ";
    } else {
        // Countdown finished
        clearInterval(x);
        document.getElementById("counter").innerHTML = "🎉 Merry Christmas 2024, Suzan! 🎄";

        // Tampilkan tombol "Next" setelah countdown selesai
        document.getElementById("nextButtonContainer").style.display = 'block';

        // Debugging: Log event expiration
        console.log("The event has expired.");
    }
}, 1000);

// Tambahkan logika untuk memutar audio
const audio = document.getElementById('merryAudio');

// Periksa status pemutaran audio dari localStorage
if (localStorage.getItem('musicPlaying') === 'true') {
    audio.play(); // Putar audio jika statusnya true
}

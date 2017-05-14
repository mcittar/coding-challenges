function main(time) {
    time = time.split(":");

    let hour = time[0];
    let minute = time[1];
    let seconds = time[2].slice(0, 2);
    let toggle = time[2].slice(2);
    if (toggle === "PM" && hour !== "12"){
        hour = parseInt(hour) + 12;
    }
    if (toggle === "AM" && hour === "12"){
        hour = "00";
    }
    console.log([hour, minute, seconds].join(":"));
}

main("12:45:54PM");

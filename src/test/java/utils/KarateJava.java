package utils;

import org.apache.commons.lang3.RandomStringUtils;

import java.time.LocalDate;
import java.util.concurrent.ThreadLocalRandom;

public class KarateJava {

    public static String createRandomString() {
        return RandomStringUtils.randomAlphanumeric(12);
    }

    public static String createRandomFirstLastName() {
        return RandomStringUtils.random(10, true, false);
    }

    public static String createRandomNumber(int count) {
        return RandomStringUtils.randomNumeric(count);
    }

    public static String currentDate() {
        LocalDate startDate = LocalDate.now(); //start date
        System.out.println(LocalDate.of(2020,05,01));
        long start = startDate.toEpochDay();

        LocalDate endDate = LocalDate.of(2020, 06, 01); //end date
        long end = endDate.toEpochDay();

        long randomEpochDay = ThreadLocalRandom.current().longs(start, end).findAny().getAsLong();
        return String.valueOf(LocalDate.ofEpochDay(randomEpochDay));
    }

    public static String futureDate(){
        LocalDate startDate = LocalDate.of(2020, 07, 01);; //start date
        System.out.println(LocalDate.now());
        long start = startDate.toEpochDay();

        LocalDate endDate = LocalDate.of(2020, 10, 30); //end date
        long end = endDate.toEpochDay();

        long randomEpochDay = ThreadLocalRandom.current().longs(start, end).findAny().getAsLong();
        return String.valueOf(LocalDate.ofEpochDay(randomEpochDay));
    }

}

package com.pages;

import org.openqa.selenium.By;
import utils.PageBase;

import java.util.logging.Logger;

public class Booking extends PageBase {

    private static final Logger LOGGER = Logger.getLogger(String.valueOf(com.pages.Booking.class));
    //private static By linkLogin = By.linkText("Sign in");

    private static By butCreateNewBooking = By.xpath("/html/body/div/div[1]/section[1]/div/div/div[2]/a/input");
    private static By txtfullname = By.name("FullName");
    private static By txtnic = By.name("NIC");
    private static By txthotelname = By.name("HotelName ");
    private static By txtpackagename = By.name("PackageName ");
    private static By txtroomscount = By.name("RoomsCount ");
    private static By txtfacilities = By.xpath("/html/body/div/div[1]/section[2]/div/div/div/div/form/div/div[2]/div[2]/div[3]/div/div/div/span/span[1]/span/ul/li/input ");
    private static By txtemail= By.xpath("/html/body/div/div[1]/section[2]/div/div/div/div/form/div/div[2]/div[2]/div[4]/div[1]/div/label ");
    private static By txtmobilenumber = By.xpath("/html/body/div/div[1]/section[2]/div/div/div/div/form/div/div[2]/div[2]/div[4]/div[2]/div/label ");
    private static By txttotalprice = By.xpath("\n" +
            "/html/body/div/div[1]/section[2]/div/div/div/div/form/div/div[2]/div[2]/div[6]/div[1]/label ");
    public static void createNewBooking() {

        getDriver().findElement(butCreateNewBooking).click();
        LOGGER.info("click create new booking");

    }
    public static void setTxtfullname(String fname) {

        getDriver().findElement(txtfullname).sendKeys(fname);
        LOGGER.info("click create new booking");

    }
    public static void setTxtnic(String NIC) {

        getDriver().findElement(txtnic).sendKeys(NIC);
        LOGGER.info("click create new booking");

    }
    public static void setTxthotelname(String HotelName) {

        getDriver().findElement(txthotelname).sendKeys(HotelName);
        LOGGER.info("click create new booking");

    }

    public static void setTxtpackagename(String PackageName) {

        getDriver().findElement(txtpackagename ).sendKeys(PackageName);
        LOGGER.info("click create new booking");

    }

    public static void settxtroomscount(String RoomsCount) {

        getDriver().findElement(txtroomscount).sendKeys(RoomsCount);
        LOGGER.info("click create new booking");

    }
    public static void setTxtfacilities(String facilities) {

        getDriver().findElement(txtroomscount).sendKeys(facilities);
        LOGGER.info("click create new booking");

    }

    public static void setTxtemail(String email) {

        getDriver().findElement(txtroomscount).sendKeys(email);
        LOGGER.info("click create new booking");

    }

    public static void settxtmobilenumber(String mobilenumber) {

        getDriver().findElement(txtmobilenumber).sendKeys(mobilenumber);
        LOGGER.info("click create new booking");

    }

    public static void settxttotalprice(String totalprice) {

        getDriver().findElement(txttotalprice).sendKeys(totalprice);
        LOGGER.info("click create new booking");

    }
}

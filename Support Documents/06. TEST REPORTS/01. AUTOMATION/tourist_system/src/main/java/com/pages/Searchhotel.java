package com.pages;

import org.openqa.selenium.By;
import utils.PageBase;

import java.util.logging.Logger;

public class Searchhotel extends PageBase {
    private static final Logger LOGGER = Logger.getLogger(String.valueOf(Searchhotel.class));
    private static By Menusearch = By.id("search-input");







    public static void clickMenuSearch() {
        getDriver().findElement(Menusearch).click();
        LOGGER.info("clicked on Search icon");

    }
}

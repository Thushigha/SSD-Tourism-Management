package test;

import com.pages.Booking;
import org.testng.annotations.Test;
import utils.PageBase;
import utils.TestBase;

public class BookingTest extends TestBase {

    @Test
    public void bookingTest(){


        Booking.createNewBooking();
        Booking.setTxtfullname("suwishana jeevananthan");
        Booking.setTxtnic("985343152V");
        Booking.setTxthotelname("valampuri");
        Booking.setTxtpackagename("package A") ;
        Booking.settxtroomscount("4"); ;
        Booking.setTxtfacilities("lunch");
        Booking.setTxtemail("suwishanajee@gmail.com");
        Booking.settxtmobilenumber("0762459724");
        Booking.settxttotalprice("15000");




    }
}

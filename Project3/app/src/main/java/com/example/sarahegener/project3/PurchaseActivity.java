package com.example.sarahegener.project3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;


public class PurchaseActivity extends Activity {


    public void local(View view){
        TextView text=(TextView)findViewById(R.id.purchase_text);
        text.setText("Many gifts in today's marketplace come from halfway around the world, and the impact of transportation contributes significantly to greenhouse emissions and global warming. Local craft fairs and artisan shops are a good source for gifts that come without the added costs of transportation. And gifts made locally often have a story which goes with the gift, since the artisan and the origin of the gift are known.");
    }

    public void battery(View view){
        TextView text=(TextView)findViewById(R.id.purchase_text);
        text.setText("According to the EPA, about 40% of all battery sales occur during the holiday season. Discarded batteries are an environmental hazard. Even rechargeable batteries find their way into the waste stream eventually.Try to seek out battery-free gifts like books or kites. ");
    }

    public void regift(View view){
        TextView text=(TextView)findViewById(R.id.purchase_text);
        text.setText("There's much discussion these days about the etiquette behind the trend to 're-gift', that is, to pass on a gift you received but do not need. What's to discuss? Re-gifting makes perfect sense. If you receive something you really don't need, look for ways you can reuse this gift by passing it on to someone who can use it. Of course, re-gifting needs to be done with care so as not to offend the original giver, but keeping a gift you don't need is wasteful.");
    }

    RatingBar ratingBar;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_purchase);

        ratingBar=(RatingBar)findViewById(R.id.ratingBar);

        // Set ChangeListener to Rating Bar
        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            public void onRatingChanged(RatingBar ratingBar, float rating,
                                        boolean fromUser) {

                Toast.makeText(getApplicationContext(), "Thank you for your rating!  : " + String.valueOf(rating), Toast.LENGTH_LONG).show();

            }
        });

    }
}

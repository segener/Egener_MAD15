package com.example.sarahegener.project3;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

public class RecycleActivity extends Activity {

    public void display(View view){
        TextView text=(TextView)findViewById(R.id.recycle_text);
        text.setText(" Bubble wrap can be stored for reuse, or recycled. Foam packing chips are not as easily recycled; if you don't want to store this material for reuse, take it to a shipping center like Mailboxes. etc, who will accept it for their own use. Cardboard boxes should be opened flat and set out for recycling; storing and reusing these boxes is even better as no additional energy is used in remanufacturing.");
    }

    public void electronics(View view){
        TextView text=(TextView)findViewById(R.id.recycle_text);
        text.setText("New flat-screen computer monitors, laptops, cameras, cell phones and other electronic items are common holiday gifts. Older models which are being replaced are usually still in working order, however, and should not be discarded to a landfill.");
    }

    public void reuse_tree(View view){
        TextView text=(TextView)findViewById(R.id.recycle_text);
        text.setText("Live trees that have been cut are a useful material for composting. Composting requires a carbon source and Christmas trees are just right for municipal operations which use chippers to shred the material. Look for tree drop-off locations in your neighborhood. Artificial trees which are up for replacement can also be recycled. These trees are usually made from twisted metal which is accepted by most recycling centers.");
    }

    RatingBar ratingBar;
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_recycle);

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

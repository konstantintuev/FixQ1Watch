package tuev.konstantin.fixq1watch;

import android.content.Context;
import android.graphics.Color;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class Classes {
    static ClassTimetable[] classTimetables;
    static {
        classTimetables = new ClassTimetable[7];
        classTimetables[0] = new ClassTimetable(1, "7.30", "8.10");
        classTimetables[1] = new ClassTimetable(2, "8.15", "8.55");
        classTimetables[2] = new ClassTimetable(3, "9.15", "9.55");
        classTimetables[3] = new ClassTimetable(4, "10.00", "10.40");
        classTimetables[4] = new ClassTimetable(5, "10.50", "11.30");
        classTimetables[5] = new ClassTimetable(6, "11.40", "12.20");
        classTimetables[6] = new ClassTimetable(7, "12.30", "13.10");
    }

    private static boolean isBetweenTimes(ClassTimetable classTimetable) {
        try {
            Date time1 = new SimpleDateFormat("HH.mm", Locale.GERMANY).parse(classTimetable.start);
            Calendar calendar1 = Calendar.getInstance();
            calendar1.setTime(time1);
            calendar1.set(10, 5,5);

            Date time2 = new SimpleDateFormat("HH.mm", Locale.GERMANY).parse(classTimetable.end);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(time2);
            calendar2.set(10, 5,5);

            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(Calendar.DATE, 1);
            calendar3.set(10, 5,5);

            Date x = calendar3.getTime();
            if (x.after(calendar1.getTime()) && x.before(calendar2.getTime())) {
                return true;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return false;
    }
    String name;

    static class ClassTimetable {
        int id;
        String start;
        String end;

        @Override
        public String toString() {
            return id+". "+start+" - "+end;
        }

        ClassTimetable(int id, String start, String end) {
            this.id = id;
            this.start = start;
            this.end = end;

        }
    }

    static Pair<Integer, ListView> getClassTimetables(Context context) {
        int idToColor = -5;

        for (ClassTimetable classTime:classTimetables) {
            if (idToColor == -5 && isBetweenTimes(classTime)) {
                idToColor = classTime.id-1;
            }
        }

        ListView listView = new ListView(context);
        listView.setBackgroundColor(Color.WHITE);
        final int finalIdToColor = idToColor;
        ArrayAdapter<ClassTimetable> itemsAdapter = new ArrayAdapter<ClassTimetable>(context, android.R.layout.simple_list_item_1, classTimetables) {
            @NonNull
            @Override
            public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
                TextView textView = (TextView) super.getView(position, convertView, parent);
                if (position == finalIdToColor) {
                    textView.setTextColor(Color.RED);
                } else {
                    textView.setTextColor(Color.BLACK);
                }
                return textView;
            }
        };
        listView.setAdapter(itemsAdapter);
        return new Pair<>(idToColor, listView);
    }
}

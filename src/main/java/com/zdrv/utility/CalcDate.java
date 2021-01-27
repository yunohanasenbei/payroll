package com.zdrv.utility;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.zdrv.domain.CalcMonth;
import com.zdrv.domain.ShowTimeSheet;
import com.zdrv.domain.TimeSheet;

public class CalcDate {

	//計算ようの月初、月末の日付と日数を計算
	public static CalcMonth calcMonth (Integer deadline) {

		CalcMonth calcMonth = new CalcMonth();
		//今日の日付を取得
		LocalDate ld = LocalDate.now();
		Date date = Date.from(ld.atStartOfDay(ZoneId.systemDefault()).toInstant());
		//日付の計算のためCalenderクラスに変換
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);

		//今日の日付から締め日の日付を引く
		calendar.add(Calendar.DAY_OF_MONTH, -deadline);

		calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), deadline);

		// Calendar型の日時をDate型に戻す(月初)
		calcMonth.setStartDay(calendar.getTime());
		System.out.println(calcMonth.getStartDay());


		//日付の計算のためCalenderクラスに変換(1か月の日数を計算)
		Calendar calendar2 = Calendar.getInstance();
		calendar2.setTime(calcMonth.getStartDay());
		calendar2.add(Calendar.MONTH, +1);
		calcMonth.setEndDay(calendar2.getTime());
		System.out.println(calcMonth.getEndDay());

		long dateTimeTo = calcMonth.getEndDay().getTime();
		long dateTimeFrom = calcMonth.getStartDay().getTime();
		calcMonth.setDayDiff((dateTimeTo - dateTimeFrom) / (1000 * 60 * 60 * 24));

		return calcMonth;
	}


	//抽出した勤務情報を1か月のリストの中に入れる
	public static List<ShowTimeSheet> addMonthList (CalcMonth calcMonth, List<TimeSheet> timeSheet){

		List<ShowTimeSheet> monthList = new ArrayList<>();
		//TimeSheet[] array = timeSheet.toArray(new TimeSheet[timeSheet.size()]);
		Integer t = 0;
		System.out.println(timeSheet.size());

		//もしTimeSheetの勤務情報がなかった場合
		if(timeSheet.size() == 0) {
			for(int i = 0; i < calcMonth.getDayDiff(); i++) {

			//日付の計算のためCalenderクラスに変換
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(calcMonth.getStartDay());

			//今日の日付から締め日の日付を引く
			calendar.add(Calendar.DAY_OF_MONTH, i);

			// Calendar型の日時をDate型に戻す
	        Date addDay = calendar.getTime();
			monthList.add(new ShowTimeSheet(addDay, new TimeSheet()));
			}
		}else {


		for(int i = 0; i < calcMonth.getDayDiff(); i++) {

			//日付の計算のためCalenderクラスに変換
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(calcMonth.getStartDay());

			//今日の日付から締め日の日付を引く
			calendar.add(Calendar.DAY_OF_MONTH, i);


			// Calendar型の日時をDate型に戻す
	        Date addDay = calendar.getTime();
	        Date picDay = timeSheet.get(t).getDay();
	        System.out.println(addDay);
	        System.out.println(picDay);

	        if(addDay.compareTo(picDay) == 0) {
	        	monthList.add(new ShowTimeSheet(addDay,timeSheet.get(t)));
	        	System.out.println(timeSheet.get(t));
	        	System.out.println(t);
	        	System.out.println(i);
	        	System.out.println(timeSheet.size());
	        //	monthList.add(new ShowTimeSheet(addDay,array[t]));
	        	if(t <= timeSheet.size()-2) {
	        		t = t + 1;
	        	}
	        }
	        else {
	        	monthList.add(new ShowTimeSheet(addDay, new TimeSheet()));
	        }
		}

		}

		return monthList;
	}

}

package com.team.service;

import java.util.ArrayList;
import java.util.List;

//public class ReservartionService {
////	private List<reservationvo> getAlreadyTime (String seat){
////		try { 
////			return reservationdao.findBySeat (seat); 
////		} catch (Exception e) { 
////			throw new RuntimeException("오류가 발생했습니다 잠시 후 다시시도 바랍니다");
////		}
////	}
//	
//	public List<Integer> getCanRerserTime (String seat) { 
////		int nowHour=utilservice.getNowHour(); 
//		List<reservationvo>alreadyTimes=getAlreadyTime(seat); 
//		List<Integer>array=new ArrayList<>();
//	
//		try {
//			if(alreadyTimes.isEmpty()){
//				for (int i=openTime; i<=closeTime; i++){ 
//					if(i>nowHour){
//						array.add(i);
//					}
//				}
//			}else{
//				for(int i=openTime; i<=closeTime; i++){ 
//					for (int ii=0;iicalreadyTimes.size();ii++) {
//						if(i>nowHour){
//							if(i==alreadyTimes.get(ii).getRequesthour()){ 
//								System.out.println("불가능 시간"+ i); 
//								break;
//							}else if(ii==alreadyTimes.size()-1){
//								System.out.println("가능한 시간"+ i); 
//								array.add(i);
//							}
//						}
//					}
//				}
//			}
//			return array;
//		} catch (Exception e) {
//			throw new RuntimeException("오류가 발생했습니다 잠시 후 다시시도 바랍니다");
//		}
//	}
//}

public JSONObject ReservartionService(getDateDto getDateDto) {
	System.out.println("getDateBySeat");
	try {
		Int month=getDateDto.getMonth();
		LocalDate selectDate=LocalDate.of (getDateDto.getYear(), month,1);
		YearMonth yearMonth=YearMonth.from (selectDate); 
		int lastDay=yearMonth.lengthOfMonth();
		System.out.println(lastDay+" lastDay");
int start=0;
DayOfWeek dayOfWeek= selectDate.getDayOfWeek();
int temp-1;
start-dayofweek.getValue();
System.out.println(start+" start");
int endDayIdOfMonth-lastDay+start;
System.out.println(endDayIdOfMonth+" endDayIdOfMonth"); JSONObject dates-new JSONObject();
int [][]dateAndValue-new int[endDayIdOfMonth][3]; for (int 1-1;i<start; i++) {
dateAndValue[i][0]-0;
dateAndValue[i][1]-0;
dateAndValue[1][2]-cantFlag;
}
for (int i-start; i<endDay IdOfMonth;i++) {
Timestamp timestamp-Timestamp.valueOf(getDateDto.getYear()+"="+month+"-"+temp+" 00:00:00");
int countAlready-getCountAlready InDate(timestamp, getDateDto.getSeat()); dateAndValue[i][0]-temp;
dateAndValue[i][1]-countAlready;
if (countAlready>-maxPeopleOfDay ||uti115ervice.compareDate(timestamp, LocalDateTime.now())){ dateAndValue[i][2]-cantFlag;
}
temp+-1;
dates.put("dates", dateAndValue);
System.out.println(dates);
return dates;
} catch (Exception e) {



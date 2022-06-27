package com.team.service;

public class reservartionService {
	private List<reservationvo> getAlreadyTime (String seat){
		try { 
			return reservationdao.findBySeat (seat); 
		} catch (Exception e) { 
			throw new RuntimeException("오류가 발생했습니다 잠시 후 다시시도 바랍니다");
		}
	}
	
	public List<Integer> getCanRerserTime (String seat) { 
		int nowHour-utilservice.getNowHour(); 
		List<reservationvo>alreadyTimes-getAlreadyTime (seat); 
		List<Integer>array=new ArrayList<>();
	
		try {
			if(alreadyTimes.isEmpty()){
				for (int i=openTime; i<=closeTime; i++){ 
					if(i>nowHour){
						array.add(i);
					}
				}
			}else{
				for(int i=openTime; i<=closeTime; i++){ 
					for (int ii=0;iicalreadyTimes.size();ii++) {
						if(i>nowHour){
							if(i==alreadyTimes.get(ii).getRequesthour()){ 
								System.out.println("불가능 시간"+ i); 
								break;
							}else if(ii==alreadyTimes.size()-1){
								System.out.println("가능한 시간"+ i); 
								array.add(i);
							}
						}
					}
				}
			}
			return array;
		} catch (Exception e) {
			throw new RuntimeException("오류가 발생했습니다 잠시 후 다시시도 바랍니다");
		}
	}
}



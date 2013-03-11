package com.shangde.edu.stu.action;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.shangde.common.action.CommonAction;
import com.shangde.common.util.DateUtil;
import com.shangde.edu.stu.condition.QueryVideoStatisticsCondition;
import com.shangde.edu.stu.domain.VideoStatistics;
import com.shangde.edu.stu.domain.VideoStatisticsDetail;
import com.shangde.edu.stu.service.IVideoStatistics;
import com.shangde.edu.stu.service.IVideoStatisticsDetail;

/**
 * Copyright (c) Sunland Career CO.LTD. All rights are reserved.
 * LICENSE INFORMATION
 * 
 * 主体功能:
 *
 * @author		Yangning
 * @date		2012-2-3
 * @version 	修改人:
 * 				修改日期:
 * 				
 *              
 */
public class VideoStatisticsDetailAction extends CommonAction{

	private static boolean lock = false;

	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = Logger.getLogger(VideoStatisticsDetailAction.class);
	
	private static final Integer STA_TYPE_DATE = 0;
	private static final Integer STA_TYPE_PONITID = 1;
	//private static final Integer INTERVAL_SIZE = 100;
	private IVideoStatisticsDetail videoStatisticsServiceDetail;
	
	private IVideoStatistics videoStatisticsService;
	
	/**
	 * 
	 * @return
	 * Author:Yangning
	 * CreateDate:2012-2-3
	 */
	public String importVStatisDetail(){
		try{
			if(!lock){
			lock = true;
			//int totalCount = videoStatisticsService.getVideoStatisticsCount();
			int totalCount = 1;
			//int accCount = 0;
			if(totalCount != 0){
				//QueryVideoStatisticsCondition condition = new QueryVideoStatisticsCondition();
				//while(totalCount >= accCount){
					
				List<VideoStatistics> allList = videoStatisticsService.getVideoStatisticsListCollector(null);
				if(allList != null && allList.size() > 0){
					int count = 0;
					for (VideoStatistics videoStatistics : allList) {
						int cusId = videoStatistics.getCusId();
						int courseId = videoStatistics.getCourseId();
						String viewCode = videoStatistics.getViewCode();
						if(viewCode != null && viewCode.trim().length() > 0){
							String [] arrayViewInfo = viewCode.split("K");
							for (int i = 0; i < arrayViewInfo.length; i++) {
								String [] viewInfo = arrayViewInfo[i].split("D");
								String date	= viewInfo[STA_TYPE_DATE];
								String pointId = viewInfo[STA_TYPE_PONITID];
								Date dateFormate = null;
								try {
									dateFormate = DateUtil.toDate(date,"yyyyMMdd");
								} catch (ParseException e) {
									logger.error("VideoStatisticsDetailAction.importVStatisDetail",e);
								}
								VideoStatisticsDetail detail = new VideoStatisticsDetail();
								detail.setCourseId(courseId);
								detail.setCusId(cusId);
								detail.setPointId(Integer.parseInt(pointId));
								detail.setViewDate(dateFormate);
								videoStatisticsServiceDetail.addVideoStatis(detail);
							}
						}
					}
					count++;
					logger.info("第" + count +"条数据导入完成");
				}
				}
			lock = false;
			}
		}catch(Exception e){
			logger.error("VideoStatisticsDetailAction.importVStatisDetail",e);
			lock = false;
		}
		return SUCCESS;
	}
	
	
	public IVideoStatisticsDetail getVideoStatisticsServiceDetail() {
		return videoStatisticsServiceDetail;
	}


	public void setVideoStatisticsServiceDetail(
			IVideoStatisticsDetail videoStatisticsServiceDetail) {
		this.videoStatisticsServiceDetail = videoStatisticsServiceDetail;
	}


	public IVideoStatistics getVideoStatisticsService() {
		return videoStatisticsService;
	}


	public void setVideoStatisticsService(IVideoStatistics videoStatisticsService) {
		this.videoStatisticsService = videoStatisticsService;
	}


	public static void main(String[] args) {
		String str = "20110608D772K20110608D780K20110608D771K20110608D786K20110608D774K20110609D771K20110609D791K20110610D771K20110613D771K20110615D771K20110618D771K20110620D771K20110623D773K20110623D771K20110623D774K20110629D771K20110630D771K20110701D771K20110703D771K20110704D771K20110706D771K20110707D771K20110707D772K20110707D773K20110708D771K20110708D772K20110709D786K20110711D771K20110713D771K20110713D1545K20110714D771K20110715D771K20110716D772K20110717D771K20110718D771K20110718D781K20110721D771K20110722D771K20110725D771K20110725D772K20110725D779K20110728D771K20110728D772K20110729D771K20110729D772K20110729D773K20110729D787K20110729D788K20110729D774K20110729D776K20110729D3650K20110730D771K20110731D771K20110731D772K20110731D773K20110731D774K20110731D776K20110801D771K20110802D771K20110802D772K20110802D786K20110803D791K20110804D771K20110804D793K20110804D772K20110805D771K20110805D774K20110808D771K20110808D772K20110808D774K20110808D776K20110809D771K20110810D772K20110811D793K20110812D783K20110812D772K20110812D776K20110812D771K20110812D773K20110812D774K20110812D777K20110812D779K20110812D780K20110813D781K20110813D782K20110813D783K20110813D784K20110813D786K20110813D787K20110813D788K20110813D789K20110813D791K20110813D1545K20110813D792K20110813D793K20110818D771K20110818D772K20110818D773K20110818D774K20110818D776K20110818D777K20110818D779K20110818D780K20110818D781K20110818D783K20110818D782K20110818D784K20110818D786K20110818D787K20110818D788K20110819D789K20110819D791K20110819D1545K20110820D771K20110826D771K20110826D791K20110827D772K20110827D779K20110827D774K20110828D771K20110830D772K20110830D771K20110831D771K20110901D771K20110901D786K20110902D771K20110902D776K20110902D772K20110902D773K20110906D771K20110906D772K20110906D773K20110906D774K20110906D776K20110906D777K20110906D779K20110907D780K20110907D781K20110907D782K20110907D783K20110907D784K20110907D786K20110907D787K20110907D788K20110907D789K20110907D791K20110907D1545K20110907D792K20110907D793K20110922D771K20110923D776K20110926D772K20110926D776K20111002D771K20111002D772K20111002D773K20111002D774K20111003D771K20111003D772K20111003D773K20111003D774K20111003D776K20111003D777K20111003D779K20111003D780K20111009D772K20111009D773K20111009D776K20111009D783K20111011D771K20111011D773K20111011D793K20111012D771K20111013D771K20111013D776K20111015D771K20111018D771K20111020D771K20111021D772K20111021D774K20111021D771K20111025D772K20111025D791K20111026D771K20111026D773K20111027D772K20111027D771K20111028D771K20111029D771K20111030D771K20111030D772K20111030D773K20111030D774K20111031D771K20111031D776K20111101D771K20111102D771K20111103D771K20111104D771K20111111D771K20111123D772K20111123D773K20111123D771K20111124D774K20111124D780K20111124D771K20111124D779K20111124D772K20111124D773K20111125D772K20111125D773K20111125D771K20111125D774K20111125D776K20111125D777K20111125D779K20111126D771K20111127D771K20111128D771K20111128D772K20111128D773K20111129D771K20111130D771K20111201D771K20111201D772K20111202D771K20111202D776K20111202D779K20111202D787K20111202D793K20111203D771K20111206D771K20111207D771K20111207D786K20111208D771K20111208D772K20111208D773K20111209D771K20111211D771K20111214D771K20111214D776K20111214D777K20111214D779K20111214D780K20111214D781K20111214D782K20111214D783K20111214D784K20111214D786K20111214D787K20111214D788K20111215D789K20111215D791K20111215D1545K20111215D792K20111215D793K20111215D776K20111215D777K20111215D779K20111215D780K20111215D781K20111215D782K20111215D783K20111215D784K20111215D786K20111215D771K20111216D771K20111217D771K20111218D771K20111219D771K20111221D771K20111222D771K20111223D773K20111223D774K20111223D771K20111223D772K20111225D771K20111225D772K20111225D773K20111225D774K20111226D771K20111227D771K20111227D776K20111228D771K20111229D771K20111229D772K20111229D773K20111229D774K20111229D776K20111231D771K20111231D772K20111231D773K20120103D771K20120104D771K20120105D771K20120106D771K20120109D771K20120109D772K20120109D773K20120109D774K20120109D776K20120109D777K20120109D779K20120110D780K20120110D781K20120110D782K20120110D783K20120110D784K20120110D786K20120110D787K20120110D788K20120110D789K20120110D791K20120110D1545K20120110D792K20120110D793K20120110D771K20120110D772K20120111D771K20120112D771K20120112D772K20120122D771K20120126D771K20120127D771K20120128D771K20120129D771K20120131D771K20120131D779K20120201D771";
		String [] arrayViewInfo = str.split("K");
		for (int i = 0; i < arrayViewInfo.length; i++) {
			System.out.println(arrayViewInfo[i]);
			String [] viewInfo = arrayViewInfo[i].split("D");
			for (int j = 0; j < viewInfo.length; j++) {
				System.out.println(viewInfo[j]);
				//System.out.println(viewInfo[j]);
			}
			//System.out.println(arrayViewInfo[i]);
		}
	}
}
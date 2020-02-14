package me.gall.ten.control.api;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.gall.ten.control.BaseController;
import me.gall.ten.control.api.bean.SyncAppOrderReq;
import me.gall.ten.control.api.bean.SyncAppOrderResp;
import me.gall.ten.model.bean.MmiapResult;
import me.gall.ten.service.exception.InvalidMsgTypeException;
import me.gall.ten.service.exception.MsgTypeNotFoundException;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * MMIAP�Ʒѽ���ص�֪ͨ������
 * @author kimi
 * @dateTime 2013-4-28 ����4:10:26
 */
@Controller
@RequestMapping("/cmcc/")
public class MMIAPApiController {

	private Logger log = Logger.getLogger(getClass());

	private Logger mmiap_log = Logger.getLogger("mmiap");

	/**
	 * MM�ƷѶ������֪ͨ�ӿ�
	 * 
	 * @author kimi
	 * @dateTime 2012-6-18 ����8:21:33
	 * @param result
	 * @param request
	 * @param response
	 * @param model
	 * @return �����߷����� -> M-Marketƽ̨ Ӧ����
	 * @throws Exception
	 */
	@RequestMapping(value = "mmiap", method = RequestMethod.POST)
	@ResponseBody
	protected SyncAppOrderResp mmiap(@RequestBody SyncAppOrderReq result, HttpServletRequest request,
			HttpServletResponse response, Map<String, Object> model) throws Exception {
		if (null == result || "".equals(result)) {
			response.setStatus(400);
			return null;
		}
		log.info(JSONObject.fromObject(result).toString());
		SyncAppOrderResp syncAppOrderResp = new SyncAppOrderResp();
		syncAppOrderResp.setMsgType("SyncAppOrderResp");
		syncAppOrderResp.setVersion("1.0.0");
		try {
			//����������Ŀ��Ҫ����Ʒѽ��֪ͨ��Ϣ
			//У�����...
			//��������У�����MM���ṩ����Ӧ�ĵ�����hRet���ò�ͬ��ֵ���з��ء�
			// ......
			//�����Զ���һЩ�쳣�����в��񷵻���Ӧ��ֵ��
		} catch (InvalidMsgTypeException e) {
			mmiap_log.info("��Ϣ�����쳣���쳣��Ϣ�ǣ�" + e.getMessage());
			syncAppOrderResp.sethRet(4000);
		} catch (MsgTypeNotFoundException e) {
			mmiap_log.info("û���ҵ���Ϣ���͡�" + e.getMessage());
			syncAppOrderResp.sethRet(9015);
		} catch (Exception e) {
			e.printStackTrace();
			syncAppOrderResp.sethRet(2);
		}
		return syncAppOrderResp;
	}
}
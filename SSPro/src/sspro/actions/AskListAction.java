package sspro.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.AskDAO;
import sspro.vo.AskVO;
import sspro.vo.SpacePostVO;

public class AskListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		
		ActionForward forword = null;
		
		if(action.equals("artistask")) {
			String ArtistID = request.getParameter("email");
			AskDAO askdao = new AskDAO();
			ArrayList<AskVO> artistask = askdao.selectArtistAsk(ArtistID);
			ArrayList<SpacePostVO> spacelist = askdao.selectSpaceAsk();
			
			request.setAttribute("artistask", artistask);
			request.setAttribute("spacelist", spacelist);
			forword = mapping.findForward("artistask");
		}
		
		else if(action.equals("spaceask")) {
			
		}

		return forword;
	}
}

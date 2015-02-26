package hr.fname.elaw.service.impl;

import hr.fname.elaw.dao.PerspectiveDAO;
import hr.fname.elaw.model.Perspective;
import hr.fname.elaw.service.PerspectiveService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PerspectiveServiceImpl implements PerspectiveService {

	@Autowired
	private PerspectiveDAO perspectiveDAO;

	public List<Perspective> getAllPerspectives() {
		return perspectiveDAO.getAllPerspectives();
	}
}

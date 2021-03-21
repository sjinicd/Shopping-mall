package pet.mvc.service;

import java.util.ArrayList;
import pet.walk.vo.IndexData;
import pet.walk.vo.Walk;

public interface IndexService {
	ArrayList<Walk> getWalkList();
	IndexData getWalkData();
}

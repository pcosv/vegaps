package models.repositorios;

import java.util.List;

public interface IRep<R> {
		
		public List<R> all();
		
		public R findId(String id);
		
		public void save(R r);
		
		public void delete(String id);
}

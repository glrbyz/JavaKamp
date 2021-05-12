package kodlamaio.business.concretes;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kodlamaio.business.abstratcs.JobTitleService;
import kodlamaio.dataAccess.abstracts.JobTitleDao;
import kodlamaio.entities.concretes.JobTitle;

@Service  // Service katmanı olduğunu söylüyoruz manager'a. 

public class JobTitleManager implements JobTitleService {
	
	private JobTitleDao jobTitleDao;  // entitiydeki jobtitle'a ulaşmak için jobtitledao'ya bağlandık.
	
	@Autowired //arka planda new'liyor
	public JobTitleManager(JobTitleDao jobTitleDao) {
		super();
		this.jobTitleDao = jobTitleDao;
	}

	@Override
	public List<JobTitle> getAll() {
		
		return this.jobTitleDao.findAll(); //getAll ile aynı springframework ile aynı. jparepository ile finalall 
		//fonksiyonuna ulaşabildik.
		
	}

}

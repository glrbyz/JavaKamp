package kodlamaio.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import kodlamaio.entities.concretes.JobTitle;

public interface JobTitleDao extends JpaRepository<JobTitle, Integer> {
	
	// jparepository creat update delete metotlarını otomatik ekliyor bu yüzden id kısmını alıyor ve integer tanımlıyoruz.
	// yani void add void update void delete kısımlarını jparepository yapıyor.
	
	//jparepository'yi kullanınca concretes kısmını doldurmaya gerek kalmıyor.

}

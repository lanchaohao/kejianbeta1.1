package com.sf.service.impl;
import com.sf.dao.Update_bank_cardDao;
import com.sf.dao.impl.UpdateBankcardDaoImpl;
import com.sf.db.Data_jdbcTemplate;
import com.sf.service.UpdateBankcard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class UpdateBankcardImpl implements UpdateBankcard{
    @Autowired
    UpdateBankcardDaoImpl updateBankcardDaoImpl;
    public int update_bank_card(String user_id,String bankcard) {
        int num = updateBankcardDaoImpl.update_bank_card(user_id,bankcard);
        return num;
    }
}

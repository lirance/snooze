package com.oregonstate.snooze.handler;

import com.alibaba.fastjson.JSON;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.apache.ibatis.type.TypeHandler;

import java.sql.*;
import java.util.Date;
import java.util.Map;

/**
 * @author: chendi Zhang
 * @date: 10/6/18
 * @description:
 **/
@MappedJdbcTypes({JdbcType.VARCHAR})
@MappedTypes({Map.class})
public class ScheduleTypeHandler implements TypeHandler<Map<Integer, Boolean>> {

    @Override
    public void setParameter(PreparedStatement ps, int i, Map<Integer, Boolean> parameter, JdbcType jdbcType) throws SQLException {
        if (parameter == null) {
            ps.setNull(i, Types.VARCHAR);
        } else {
            ps.setString(i, JSON.toJSONString(parameter));
        }
    }

    @Override
    public Map<Integer, Boolean> getResult(ResultSet rs, String columnName) throws SQLException {
        String value = rs.getString(columnName);
        return JSON.parseObject(value, Map.class);
    }

    @Override
    public Map<Integer, Boolean> getResult(ResultSet rs, int columnIndex) throws SQLException {
        String value = rs.getString(columnIndex);
        return JSON.parseObject(value, Map.class);
    }

    @Override
    public Map<Integer, Boolean> getResult(CallableStatement cs, int columnIndex) throws SQLException {
        String value = cs.getString(columnIndex);
        return JSON.parseObject(value, Map.class);
    }
}

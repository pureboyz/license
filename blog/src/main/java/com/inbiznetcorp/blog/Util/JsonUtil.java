package com.inbiznetcorp.blog.Util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
 
/**
 *    일반문자열 유틸.
 *
 * @author someone
 * @version 1.0.0
 */
public class JsonUtil
{
 
    /**
     * Map을 json으로 변환한다.
     *
     * @param Map<String, Object>
     * @return JSONObject
     */
    @SuppressWarnings("unchecked")
	public static JSONObject MapToJSONObject( Map<String, Object> map )
    {
        JSONObject jsonObject = new JSONObject();
        for( Map.Entry<String, Object> entry : map.entrySet() ) {
            String key = entry.getKey().toLowerCase();
            Object value = entry.getValue();
            jsonObject.put(key, value);
        }
        
        return jsonObject;
    }
    
    /**
     * List<Map>을 jsonArray로 변환한다.
     *
     * @param List<Map<String, Object>>
     * @return JSONArray
     */
    @SuppressWarnings("unchecked")
	public static JSONArray ListToJSONArray( List<Map<String, Object>> list )
    {
        JSONArray jsonArray = new JSONArray();
        for( Map<String, Object> map : list ) {
            jsonArray.add( MapToJSONObject( map ) );
        }
        
        return jsonArray;
    }
    
    /**
     * List<Map>을 jsonString으로 변환한다.
     *
     * @param List<Map<String, Object>>
     * @return String
     */
    public static String ListToJSONString( List<Map<String, Object>> list )
    {
        JSONArray jsonArray = ListToJSONArray( list );
        return jsonArray.toJSONString();
    }
 
    /**
     * JsonObject를 Map<String, String>으로 변환한다.
     *
     * @param JSONObject
     * @return Map<String, Object>
     */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> JSONObjectToMap( JSONObject jsonObj )
    {
        Map<String, Object> map = null;
        
        try {
            
            map = new ObjectMapper().readValue(jsonObj.toJSONString(), Map.class) ;
            
        } catch (JsonParseException e) {
            e.printStackTrace();
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
 
        return map;
    }
 
    /**
     * JsonArray를 List<Map<String, Object>>으로 변환한다.
     *
     * @param JSONArray
     * @return List<Map<String, Object>>
     */
    public static List<Map<String, Object>> JSONArrayToList( JSONArray jsonArray )
    {
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        
        if( jsonArray != null )
        {
            int jsonSize = jsonArray.size();
            for( int i = 0; i < jsonSize; i++ )
            {
                Map<String, Object> map = JsonUtil.JSONObjectToMap( ( JSONObject ) jsonArray.get(i) );
                list.add( map );
            }
        }
        
        return list;
    }
}
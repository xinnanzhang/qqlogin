package com.seaove.freemarker;

import java.io.File;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class FreeMarkertUtil {
	
	public static void analysisTemplate(String templateName,String templateEncoding,Map<?,?> root){
		try {
			Configuration config=new Configuration();
			File file=new File("/bigit");
			//����Ҫ������ģ�����ڵ�Ŀ¼��������ģ���ļ�
			config.setDirectoryForTemplateLoading(file);
			//���ð�װ�������������װΪ����ģ��
			config.setObjectWrapper(new DefaultObjectWrapper());
			
			//��ȡģ��,�����ñ��뷽ʽ������������Ҫ��ҳ���еı����ʽһ��
			Template template=config.getTemplate(templateName,templateEncoding);
			
			//�ϲ�����ģ����ģ��
			Writer out = new OutputStreamWriter(System.out);  //������StringWriter stringWriter = new StringWriter();  �Ա�õ�һ���ַ���
		  template.process(root, out);
		  out.flush();
		  out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}catch (TemplateException e) {
			e.printStackTrace();
		}
	
	} 
	
	public static void analysisTemplateTwo(File file, String templateName,String templateEncoding,Map<?,?> root ,Writer out){
    try {
      Configuration config=new Configuration();
    
      //����Ҫ������ģ�����ڵ�Ŀ¼��������ģ���ļ�
      config.setDirectoryForTemplateLoading(file);
      //���ð�װ�������������װΪ����ģ��
      config.setObjectWrapper(new DefaultObjectWrapper());
      config.setDefaultEncoding(templateEncoding);
      //��ȡģ��,�����ñ��뷽ʽ������������Ҫ��ҳ���еı����ʽһ��
      Template template=config.getTemplate(templateName,templateEncoding);
      template.setEncoding(templateEncoding);
      //�ϲ�����ģ����ģ��
      //Writer out = new OutputStreamWriter(System.out);
      template.process(root, out);
      out.flush();
      out.close();
    } catch (IOException e) {
      e.printStackTrace();
    }catch (TemplateException e) {
      e.printStackTrace();
    }
  } 
	
}

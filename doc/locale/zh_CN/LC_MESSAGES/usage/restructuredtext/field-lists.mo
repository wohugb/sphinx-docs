��          �               �   k   �   �  Y  4   ,     a     m  g   �  Y   �  N   B  :   �     �  
   �     �  �  �  W   {  �  �  (   Z  	   �     �  `   �  R   	  A   T	  '   �	     �	  
   �	     �	   :ref:`As previously discussed <rst-field-lists>`, field lists are sequences of fields marked up like this:: A field list near the top of a file is normally parsed by docutils as the *docinfo* which is generally used to record the author, date of publication and other metadata.  However, in Sphinx, a field list preceding any other markup is moved from the *docinfo* to the Sphinx environment as document metadata and is not displayed in the output; a field list appearing after the document title will be part of the *docinfo* as normal and will be displayed in the output. At the moment, these metadata fields are recognized: Field Lists File-wide metadata If set, the web application won't display a comment form for a page generated from this source file. :: If set, warnings about this file not being included in any toctree will be suppressed. :: Sphinx provides custom behavior for bibliographic fields compared to docutils. The maximum depth for a table of contents of this file. :: ``nocomments`` ``orphan`` ``tocdepth`` Project-Id-Version: Sphinx 2.1.0+/1499a97c2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-03-29 17:17+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 :ref:`如前所述 <rst-field-lists>`，字段列表是标记为这样的字段序列:: 靠近文件顶部的字段列表通常由docutils解析为 *docinfo* ，它通常用于记录作者，发布日期和其他元数据。但是，在Sphinx中，任何其他标记之前的字段列表将作为文档元数据从 *docinfo* 移动到Sphinx环境，并且不会显示在输出中;文档标题后出现的字段列表将正常显示在 *docinfo* 中，并将显示在输出中。 目前，这些元数据字段被识别: 域清单 File-wide metadata 如果设置，Web应用程序将不会显示从此源文件生成的页面的注释表单。 :: 如果设置，将禁止有关此文件的警告未包含在任何toctree中。 :: 与docutils相比，Sphinx为书目字段提供自定义行为。 此文件的目录的最大深度。 :: ``nocomments`` ``orphan`` ``tocdepth`` 
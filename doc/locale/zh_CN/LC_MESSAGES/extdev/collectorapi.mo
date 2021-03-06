��          |               �   H   �      &  �   @  �   %  4   �  $   �  %     1   .  5   `  K   �  4   �  �    >   �     �  �   �  u   �  *   C     n  *   �  $   �  $   �  9     '   <   An EnvironmentCollector is a specific data collector from each document. Environment Collector API It gathers data and stores :py:class:`BuildEnvironment <sphinx.environment.BuildEnvironment>` as a database.  Examples of specific data would be images, download files, section titles, metadatas, index entries and toctrees, etc. Merge in specified data regarding docnames from a different `BuildEnvironment` object which coming from a subprocess in parallel builds. Process a document and gather specific data from it. Remove specified data of a document. Return a list of docnames to re-read. This method is called after the document is read. This method is called on the removal of the document. This methods is called after reading the whole of documents (experimental). This methods is called before reading the documents. Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 EnvironmentCollector是每个文档的特定数据收集器。 环境收集器API 它收集数据和存储 :py:class:`BuildEnvironment <sphinx.environment.BuildEnvironment>` 作为数据库。  具体数据的示例包括图像，下载文件，部分标题，元数据，索引条目和toctrees等。 合并来自不同`BuildEnvironment`对象的文档名的指定数据，该对象来自并行构建中的子进程。 处理文档并从中收集特定数据。 删除文档的指定数据。 返回要重新阅读的文档名列表。 在读取文档后调用此方法。 在删除文档时调用此方法。 在阅读完整个文档（实验）后调用此方法。 在阅读文档之前调用此方法。 
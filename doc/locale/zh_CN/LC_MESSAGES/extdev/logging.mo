��          �               �  	   �     �     �     �  e   �  2   ;  2   n     �     �  G   �  `     @   h  9   �     �  u   �  u   e  *   �  #     �   *  �   �  �   �  U   "  �   x  �    	   �	     �	     �	     �	  f   �	  /   9
  /   i
     �
     �
  J   �
  ]   �
  4   Z  9   �  	   �  o   �  o   C  -   �  %   �  �     �   �     l  d   �  �   Q   **color** **location** **nonl** **type**, ***subtype*** Categories of warning logs.  It is used to suppress warnings by :confval:`suppress_warnings` setting. Contextmanager to pend logging all logs temporary. Contextmanager to pend logging warnings temporary. Example usage:: For example:: Get logger wrapped by :class:`sphinx.util.logging.SphinxLoggerAdapter`. If true, the logger does not fold lines at the end of the log message. The default is ``False``. In addition, Sphinx logger supports following keyword arguments: LoggerAdapter allowing ``type`` and ``subtype`` keywords. Logging API Logs a message on this logger with the specified level. Basically, the arguments are as with python's logging module. Logs a message to this logger with the specified level. Basically, the arguments are as with python's logging module. Prepend prefix to all records for a while. Similar to :func:`pending_logging`. Sphinx logger always uses ``sphinx.*`` namespace to be independent from settings of root logger.  It ensures logging is consistent even if a third-party extension or imported application resets logger settings. The color of logs.  By default, error level logs are colored as ``"darkred"``, critical level ones is not colored, and warning level ones are colored as ``"red"``. The color of logs.  By default, info and verbose level logs are not colored, and debug level ones are colored as ``"darkgray"``. Where the message emitted.  For more detail, see :meth:`SphinxLoggerAdapter.warning`. Where the warning happened.  It is used to include the path and line number in each log.  It allows docname, tuple of docname and line number and nodes:: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 **color** **location** **nonl** **type**, ***subtype*** 警告日志的类别。它用于通过以下方式抑制警告 :confval:`suppress_warnings` 设置。 Contextmanager挂起临时记录所有日志。 Contextmanager暂时挂起日志记录警告。 用法示例:: 例如:: 获取记录器包装 :class:`sphinx.util.logging.SphinxLoggerAdapter` 。 如果为true，则记录器不会在日志消息的末尾折叠行。默认为 ``False`` 。 此外，Sphinx记录器支持以下关键字参数: LoggerAdapter允许 ``type`` 和 ``subtype`` 关键字。 记录API 使用指定的级别在此记录器上记录消息。基本上，参数与python的日志记录模块一样。 使用指定的级别将消息记录到此记录器。基本上，参数与python的日志记录模块一样。 将前缀添加到所有记录一段时间。 类似于 :func:`pending_logging` 。 Sphinx记录器总是使用 ``sphinx.*`` 命名空间独立于root logger的设置。即使第三方扩展或导入的应用程序重置记录器设置，它也可确保记录一致。 日志的颜色。默认情况下，错误级别日志的颜色为“黑色”，“关键级别”没有着色，警告级别日志的颜色为“红色”“红色”。 日志的颜色。默认情况下，信息和详细级别日志不会着色，调试级别日志会显示为 ``"darkgray"`` 。 发出消息的地方。有关更多详细信息，请参阅 :meth:`SphinxLoggerAdapter.warning` 。 发生警告的地方。它用于包括每个日志中的路径和行号。它允许docname，docname和行号和节点的元组:: 
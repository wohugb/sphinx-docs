��          �               �   0   �      .  Y   <  �   �  e     m     P   �  >   >  &   }  �   �  �   *  6   �  3   �  �  0  ,   �     �  R   �  �   ?  i   �  r   6  J   �  .   �  !   #	  �   E	  �   �	  ,   Z
      �
   :mod:`sphinx.ext.todo` -- Support for todo items Configuration Emitted when a todo is defined. *node* is the defined ``sphinx.ext.todo.todo_node`` node. If this is ``True``, :rst:dir:`todo` and :rst:dir:`todolist` produce output, else they produce nothing.  The default is ``False``. If this is ``True``, :rst:dir:`todo` emits a warning for each TODO entries. The default is ``False``. If this is ``True``, :rst:dir:`todolist` produce output without file path and line, The default is ``False``. It will only show up in the output if :confval:`todo_include_todos` is ``True``. There are two additional directives when using this extension: These can be configured as seen below. This directive is replaced by a list of all todo directives in the whole documentation, if :confval:`todo_include_todos` is ``True``. This directive supports an ``class`` option that determines the class attribute for HTML output.  If not given, the class defaults to ``admonition-todo``. Use this directive like, for example, :rst:dir:`note`. autodoc provides the following an additional event: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 :mod:`sphinx.ext.todo` -- 支持待办事项 配置 定义todo时发出。 *node* 是定义的 ``sphinx.ext.todo.todo_node`` 节点。 如果这是 ``True`` ，则 :rst:dir:`todo` 和 :rst:dir:`todolist` 产生输出，否则它们什么都不产生。默认为 ``False`` 。 如果这是 ``True`` ，则 :rst:dir:`todo` 会为每个TODO条目发出警告。默认为 ``False`` 。 如果这是 ``True`` ，则 :rst:dir:`todolist` 产生没有文件路径和行的输出，默认为 ``False`` 。 它只会出现在输出中 :confval:`todo_include_todos` 是 ``True`` 。 使用此扩展时，还有两个附加指令: 这些可以配置如下所示。 如果出现以下情况，则该指令将替换为整个文档中所有todo指令的列表 :confval:`todo_include_todos` 为 ``True`` 。 该指令支持 ``class`` 选项，该选项确定HTML输出的class属性。如果没有给出，该类默认为 ``admonition-todo`` 。 使用此指令，例如， :rst:dir:`note`. autodoc提供以下附加事件: 
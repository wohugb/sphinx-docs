��          �               L  /   M  7   }  �   �  0   p  ?   �     �  �   �     p     �  )   �     �     �     �     �  8   �  _   *     �  ;   �  �  �  /   ]  7   �  �   �  /   g  9   �     �  r   �     K     d     h     �     �     �     �  0   �  M   �     =	  3   L	   **sphinx-autogen** [*options*] <sourcefile> ... :manpage:`sphinx-build(1)`, :manpage:`sphinx-apidoc(1)` :program:`sphinx-autogen` is a tool for automatic generation of Sphinx sources that, using the :rst:dir:`autodoc` extension, document items included in :rst:dir:`autosummary` listing(s). Custom template directory. Defaults to ``None``. Default suffix to use for generated files. Defaults to ``rst``. Description Directory to place the output file. If it does not exist, it is created. Defaults to the value passed to the ``:toctree:`` option. Document imported members. Example Given the following directory structure:: If you run the following: Options See also Synopsis and assuming ``docs/index.rst`` contained the following: and each of those files will contain a :rst:dir:`autodoc` directive and some other information. sphinx-autogen then the following stub files will be created in ``docs``:: Project-Id-Version: Sphinx 2.1.0+/1499a97c2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-03-30 00:15+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **sphinx-autogen** [*options*] <sourcefile> ... :manpage:`sphinx-build(1)`, :manpage:`sphinx-apidoc(1)` :program:`sphinx-autogen` 是一个自动生成Sphinx源的工具，使用 :rst:dir:`autodoc` 扩展，文档项包含在 :rst:dir:`autosummary` listing(s)中。 自定义模板目录。默认为  ``None`` 。 用于生成文件的默认后缀。默认为 ``rst`` 。 描述 放置输出文件的目录。如果它不存在，则创建它。默认为传递给 ``:toctree:`` 选项的值。 记录导入的成员。 例 给定以下目录结构:: 如果您运行以下内容: 选项 也可以看看 概要 并假设 ``docs/index.rst`` 包含以下内容: 每个文件都包含一个 :rst:dir:`autodoc` 指令和其他一些信息。 sphinx-autogen 然后将在 ``docs``: 中创建以下存根文件: 
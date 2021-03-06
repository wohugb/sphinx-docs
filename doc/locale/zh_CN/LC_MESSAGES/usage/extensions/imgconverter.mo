��          \               �   O   �   g   �   p   U     �  �   �  ?   �  �   �  �  �  K   [  b   �  j   
     u  �   |  8   Z  �   �   :mod:`sphinx.ext.imgconverter` -- A reference image converter using Imagemagick A path to :command:`convert` command.  By default, the imgconverter uses the command from search paths. Additional command-line arguments to give to :command:`convert`, as a list. The default is an empty list ``[]``. Configuration Imagemagick rasterizes a SVG image on conversion.  As a result, the image becomes not scalable.  To avoid that, please use other image converters like `sphinxcontrib-svg2pdfconverter`__ (which uses Inkscape or ``rsvg-convert``). Internally, this extension uses Imagemagick_ to convert images. This extension converts images in your document to appropriate format for builders.  For example, it allows you to use SVG images with LaTeX builder. As a result, you don't mind what image format the builder supports. Project-Id-Version: Sphinx 2.1.0+/1499a97c2
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
 :mod:`sphinx.ext.imgconverter` -- 使用Imagemagick的参考图像转换器 路径 :command:`convert` 命令。默认情况下，imgconverter使用搜索路径中的命令。 额外的命令行参数，用于 :command:`convert` ，作为列表。默认是一个空列表 ``[]`` 。 配置 Imagemagick在转换时栅格化SVG图像。 结果，图像变得不可缩放。  为避免这种情况，请使用其他图像转换器，如 `sphinxcontrib-svg2pdfconverter`__ (使用 Inkscape 或 ``rsvg-convert`` )。 在内部，此扩展使用 Imagemagick_ 转换图像。 此扩展将文档中的图像转换为适当的构建器格式。例如，它允许您将SVG图像与LaTeX构建器一起使用。因此，您不介意构建器支持的图像格式。 
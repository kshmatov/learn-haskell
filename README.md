# learn-haskell
Репозиторий с моими занятиями по книге "Программируй на Haskell" Уилла Курта.
Ничего особо интересного для посторонних
***

# Haskell на Windows

Disclaimer: Информация актуальна на 02.04.2021 

UPDATE: Уже устарело, юзайте ghcup. Оставляю для истории

На Windows хочется какое-то гуманное окружение для изучения Haskell. 
Однако если все ставить как предложено на разнообразных ресурсах, 
то возникнут кучи проблем. Так, официальные руководства с 
[haskell.org](https://www.haskell.org/platform/windows.html) рекомендуют 
ставить ghc через 

> choco install haskell-dev

В принципе, если не использовать какие-то продвинутые возможности 
редакторов - это хороший вариант. Однако выводы типов в хинтах, 
repl в коментах и прочее требует поддержки со стороны 
[haskell-language-server](https://github.com/haskell/haskell-language-server). 
И вот тут будет засада. Haskell-dev ставит ghc-9.X.Y, а HLS пока не умеет с
ней собираться. Связано это с изменениями в языке, которые требуют 
изменений в библиотеках и т.д. Пока не сделано, в общем.

Поэтому правильно ставить все будет так.

1. Ставим choco как рекомендует [руководство](https://chocolatey.org/install)
2. $ ``choco install ghc --version=8.10.4``
3. $ ``choco install cabal``
4. $ ``choco install haskell-stack`` (опционально)
5. Разбираемся с HLS. У меня VSCode качает бинарник для 8.4.4, я предпочитаю 
более новую версию. Варианты: 
    1. Качаем из репозитория HSL бинарники для ghc-8.10.4 и кладем куда-нибудь.
    2. Клонируем репозиторий к себе и собираем все сами через кабал, как написано в readme
6. Настраиваем редактор. Для VSCode ставим расширение 
   [Haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) 
   в конфиге прописываем путь к бинарнику HLS включая имя екзешника.

Ура.
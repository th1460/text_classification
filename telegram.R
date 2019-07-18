library(telegram.bot)

start <- function(bot, update) {
  bot$sendMessage(
    chat_id = update$message$chat$id,
    text = sprintf("Blza %s!", update$message$from$first_name)
  )
}

updater <- Updater("969203332:AAGx-D6mTF4pTA0dxmEBQVMUQExQPis6l5o") + CommandHandler("start", start)

updater$start_polling() # Send "/start" to the bot


bot <- Bot(token = "969203332:AAGx-D6mTF4pTA0dxmEBQVMUQExQPis6l5o")

updates <- bot$getUpdates()

updates[[1]]$effective_message()$text

enum GenericMessages: String, ILocalizable {
    case title = "title"
    case wait = "wait"
    case saved = "saved"
    case failed = "failed"
    
    var tableName: String {
        return "GenericMessages"
    }
}

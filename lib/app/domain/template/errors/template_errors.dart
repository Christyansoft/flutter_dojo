class NotFoundTemplateError implements Exception {}

class InvalidTemplateError implements Exception {}

// TODO: Se um erro pertencer a camada data, como por exemplo o de um
// retorno inválido de um datasource (InvalidTemplateError)
// mantenho no domain ou crio um template_errors em data?

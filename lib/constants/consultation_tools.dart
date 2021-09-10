import '../models/c_tool.dart';

const CTool WAIT_ROOM = CTool('sala_espera', 'Sala de espera');
const CTool REASON_REPORT = CTool(
  'reporte_motivo_consulta',
  'Reporte: motivo de consulta',
);
const CTool BACKGROUND_REPORT = CTool(
  'reporte_antecedentes',
  'Reporte: antecedentes',
);
const CTool RESPONSE_TOOLS = CTool(
  'herramientas_respuesta',
  'Herramienta de respuesta',
);

const List<CTool> CTOOLS = const [
  WAIT_ROOM,
  REASON_REPORT,
  BACKGROUND_REPORT,
  RESPONSE_TOOLS,
];

const CTool NUMERIC_ANSWER = CTool(
  'respuesta_numerica',
  'Respuesta numérica',
);
const CTool PAIN_SCALE = CTool(
  'escala_dolor',
  'Escala de dolor',
);
const CTool SPELL_ANSWER = CTool(
  'respuesta_deletreo',
  'Respuesta de deletreo',
);

const List<CTool> RESPONSETOOLS = const [
  NUMERIC_ANSWER,
  PAIN_SCALE,
  SPELL_ANSWER,
];
